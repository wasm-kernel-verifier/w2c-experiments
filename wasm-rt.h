#include<linux/panic.h>

typedef const char* wasm_rt_func_type_t;

#if __has_builtin(__builtin_expect)
#define UNLIKELY(x) __builtin_expect(!!(x), 0)
#define LIKELY(x) __builtin_expect(!!(x), 1)
#else
#define UNLIKELY(x) (x)
#define LIKELY(x) (x)
#endif

#if __has_builtin(__builtin_memcpy)
#define wasm_rt_memcpy __builtin_memcpy
#else
#define wasm_rt_memcpy memcpy
#endif

/** A Memory object. */
typedef struct {
  /** The linear memory data, with a byte length of `size`. */
  uint8_t* data;
  /** The location after the the reserved space for the linear memory data. */
  uint8_t* data_end;
  /** The page size for this Memory object
      (always 64 KiB without the custom-page-sizes feature) */
  uint32_t page_size;
  /** The current page count for this Memory object. */
  uint64_t pages;
  /** The maximum page count for this Memory object. */
  uint64_t max_pages;
  /** The current size of the linear memory, in bytes. */
  uint64_t size;
  /** Is this memory indexed by u64 (as opposed to default u32) */
  bool is64;
} wasm_rt_memory_t;

typedef enum {
  WASM_RT_TRAP_NONE, /** No error. */
  WASM_RT_TRAP_OOB,  /** Out-of-bounds access in linear memory or a table. */
  WASM_RT_TRAP_INT_OVERFLOW, /** Integer overflow on divide or truncation. */
  WASM_RT_TRAP_DIV_BY_ZERO,  /** Integer divide by zero. */
  WASM_RT_TRAP_INVALID_CONVERSION, /** Conversion from NaN to integer. */
  WASM_RT_TRAP_UNREACHABLE,        /** Unreachable instruction executed. */
  WASM_RT_TRAP_CALL_INDIRECT,      /** Invalid call_indirect, for any reason. */
  WASM_RT_TRAP_NULL_REF,           /** Null reference. */
  WASM_RT_TRAP_UNCAUGHT_EXCEPTION, /** Exception thrown and not caught. */
  WASM_RT_TRAP_UNALIGNED,          /** Unaligned atomic instruction executed. */
#if WASM_RT_MERGED_OOB_AND_EXHAUSTION_TRAPS
  WASM_RT_TRAP_EXHAUSTION = WASM_RT_TRAP_OOB,
#else
  WASM_RT_TRAP_EXHAUSTION, /** Call stack exhausted. */
#endif
  WASM_RT_TRAP_FUEL_EXHAUSTION, // Run out of fuel
} wasm_rt_trap_t;


/**
 * A generic function pointer type, both for Wasm functions (`code`)
 * and host functions (`hostcode`). All function pointers are stored
 * in this canonical form, but must be cast to their proper signature
 * to call.
 */
typedef void (*wasm_rt_function_ptr_t)(void);

/**
 * A pointer to a "tail-callee" function, called by a tail-call
 * trampoline or by another tail-callee function. (The definition uses a
 * single-member struct to allow a recursive definition.)
 */
typedef struct wasm_rt_tailcallee_t {
  void (*fn)(void** instance_ptr,
             void* tail_call_stack,
             struct wasm_rt_tailcallee_t* next);
} wasm_rt_tailcallee_t;


/**
 * A function instance (the runtime representation of a function).
 * These can be stored in tables of type funcref, or used as values.
 */
typedef struct {
  /** The function's type. */
  wasm_rt_func_type_t func_type;
  /**
   * The function. The embedder must know the actual C signature of the function
   * and cast to it before calling.
   */
  wasm_rt_function_ptr_t func;
  /** An alternate version of the function to be used when tail-called. */
  wasm_rt_tailcallee_t func_tailcallee;
  /**
   * A function instance is a closure of the function over an instance
   * of the originating module. The module_instance element will be passed into
   * the function at runtime.
   */
  void* module_instance;
} wasm_rt_funcref_t;

/** Default (null) value of a funcref */
#define wasm_rt_funcref_null_value \
  ((wasm_rt_funcref_t){NULL, NULL, {NULL}, NULL})

/** Default (null) value of an externref */
#define wasm_rt_externref_null_value ((wasm_rt_externref_t){NULL})

/** The type of an external reference (opaque to WebAssembly). */
typedef void* wasm_rt_externref_t;


/** A Table of type funcref. */
typedef struct {
  /** The table element data, with an element count of `size`. */
  wasm_rt_funcref_t* data;
  /**
   * The maximum element count of this Table object. If there is no maximum,
   * `max_size` is 0xffffffffu (i.e. UINT32_MAX).
   */
  uint32_t max_size;
  /** The current element count of the table. */
  uint32_t size;
} wasm_rt_funcref_table_t;

/** A Table of type externref. */
typedef struct {
  /** The table element data, with an element count of `size`. */
  wasm_rt_externref_t* data;
  /**
   * The maximum element count of this Table object. If there is no maximum,
   * `max_size` is 0xffffffffu (i.e. UINT32_MAX).
   */
  uint32_t max_size;
  /** The current element count of the table. */
  uint32_t size;
} wasm_rt_externref_table_t;


/** Value types. Used to define function signatures. */
typedef enum {
  WASM_RT_I32,
  WASM_RT_I64,
  WASM_RT_F32,
  WASM_RT_F64,
  WASM_RT_V128,
  WASM_RT_FUNCREF,
  WASM_RT_EXTERNREF,
  WASM_RT_EXNREF,
} wasm_rt_type_t;



void wasm_rt_init(void) {
  printk(KERN_INFO "wasm_rt_init called.\n");
/*  wasm_rt_init_thread();
#if WASM_RT_INSTALL_SIGNAL_HANDLER
  if (!g_signal_handler_installed) {
    g_signal_handler_installed = true;
    os_install_signal_handler();
  }
#endif

#if WASM_RT_USE_SEGUE
#if defined(__linux__) && defined(__GLIBC__) && __GLIBC__ >= 2 && \
    __GLIBC_MINOR__ >= 18
  // Check for support for userspace wrgsbase instructions
  unsigned long val = getauxval(AT_HWCAP2);
  wasm_rt_fsgsbase_inst_supported = val & HWCAP2_FSGSBASE;
#elif defined(__FreeBSD__)
  // FreeBSD enables fsgsbase on the newer kernels if the hardware supports it.
  // We just need to check if the hardware supports it by querying the correct
  // cpuid leaf.
  uint64_t rax, rbx, rcx, rdx;
  rax = 0;
  call_cpuid(&rax, &rbx, &rcx, &rdx);

  if (rax > 7) {
    rax = 7;
    rcx = 0;
    call_cpuid(&rax, &rbx, &rcx, &rdx);
    if (rbx & 0x1) {
      wasm_rt_fsgsbase_inst_supported = true;
    }
  }
#endif
#endif

  assert(wasm_rt_is_initialized());*/
}

bool wasm_rt_is_initialized(void) {
  return true;
}

void wasm_rt_free(void) {
 printk(KERN_INFO "wasm_rt_free called.\n");
}

void wasm_rt_trap(wasm_rt_trap_t code) {
  pr_err("wasm_rt_trap: code=%d\n", (int)code);
  WARN_ON_ONCE(1);
}
