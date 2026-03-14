#include <stdio.h>
#include <time.h>
#include <stdint.h>

#include "needle-user.h"
#include "needle-user.c"
#include "wasm-rt-impl.c"

int main(int argc, char** argv) {
  struct timespec tstart, tend;
  /* Initialize the Wasm runtime. */
  wasm_rt_init();

  /* Declare an instance of the `fac` module. */
  w2c_needle needle;

  /* Construct the module instance. */
  wasm2c_needle_instantiate(&needle);
  wasm_rt_set_fuel(1000000);
  /* Call `fac`, using the mangled name. */
  w2c_needle_populate(&needle);
  
  int n = 10000;
  int res = 0;
  clock_gettime(CLOCK_MONOTONIC_RAW, &tstart);
  for (int i = 0; i < n; i++) {
    res = w2c_needle_search(&needle);
  }
  clock_gettime(CLOCK_MONOTONIC_RAW, &tend);
  // Calculate the difference in nanoseconds
  uint64_t start_ns = (uint64_t)tstart.tv_sec * UINT64_C(1000000000) + tstart.tv_nsec;
  uint64_t end_ns = (uint64_t)tend.tv_sec * UINT64_C(1000000000) + tend.tv_nsec;
  uint64_t elapsed_ns = end_ns - start_ns;

  printf("Elapsed time: %llu nanoseconds\n", (unsigned long long)elapsed_ns);
  /* Print the result. */
  printf("the result is %d\n", res);

  /* Free the fac module. */
  wasm2c_needle_free(&needle);

  /* Free the Wasm runtime state. */
  wasm_rt_free();

  return 0;
}
