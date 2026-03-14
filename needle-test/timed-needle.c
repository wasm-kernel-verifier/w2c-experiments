#include <stdio.h>
#include <time.h>
#include <stdint.h>
static char needle[5];
static char haystack[10];

void populate() {
    for (int i = 0; i < 5; i++) {
        needle[i] = 1;
    }
    needle[4] = 0;
    for (int i = 0; i < 10; i++) {
        haystack[i] = 1;
    }
}

int search() {
    for (int i = 0; i < (10 - 5); i++) {
        int found = 1;
        for (int j = 0; j < 5; j++) {
            if (needle[j] != haystack[i+j]) {
                found = 0;
                break;
            }
        }
        if (found == 1) {
            return 1;
        }
    }
    return 0;
}

__attribute__((export_name("run")))
uint64_t run(void) {
    struct timespec tstart, tend;
    populate();
    int n = 10000;
    volatile int res = 0;
    clock_gettime(CLOCK_MONOTONIC, &tstart);
    for (int i = 0; i < n; i++) {
        res = search();
    }
    clock_gettime(CLOCK_MONOTONIC, &tend);
    uint64_t start_ns = (uint64_t)tstart.tv_sec * UINT64_C(1000000000) + tstart.tv_nsec;
    uint64_t end_ns = (uint64_t)tend.tv_sec * UINT64_C(1000000000) + tend.tv_nsec;
    uint64_t elapsed_ns = end_ns - start_ns;
    return elapsed_ns - res;
}