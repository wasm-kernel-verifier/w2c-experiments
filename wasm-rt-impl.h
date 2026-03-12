#ifndef WASM_RT_IMPL_H_
#define WASM_RT_IMPL_H_
#include <linux/types.h>

#ifdef __cplusplus
extern "C" {
#endif

void wasm_rt_set_fuel(uint64_t fuel);
uint64_t wasm_rt_get_fuel(void);
void wasm_rt_consume_fuel(uint64_t n);

void wasm_rt_allocate_memory(wasm_rt_memory_t* mem,
                             uint32_t initial_pages,
                             uint32_t max_pages,
                             bool is64,
                             uint32_t page_size);
void wasm_rt_free_memory(wasm_rt_memory_t* mem);

void wasm_rt_allocate_funcref_table(wasm_rt_funcref_table_t* table,
                                    uint32_t elements,
                                    uint32_t max_elements);
void wasm_rt_free_funcref_table(wasm_rt_funcref_table_t* table);

#ifdef __cplusplus
}
#endif

#endif