#include <stdio.h>
#include <time.h>
#include <stdint.h>

#define N 32
#define V 2
static int A[N][N];
static int B[N][N];

void populate(void) {
    for (int i = 0; i < N; i++) {
        for (int j = 0; j < N; j++) {
            A[i][j] = V;
            B[i][j] = V;
        }
    }
}

int matmul(void) {
    int result = 0;
    for (int i = 0; i < N; i++) {
        for (int j = 0; j < N; j++) {
            for (int k = 0; k < N; k++) {
                result += A[i][k] * B[k][j];
            }
        }
    }
    return result;
}

__attribute__((export_name("run")))
void run(void) {
    struct timespec tstart, tend;
    int num = 10;
    uint64_t result = 0;
    uint64_t times[num];
    populate();
    for (int i = 0; i < num; i++) {
        clock_gettime(CLOCK_MONOTONIC, &tstart);
        result = matmul();
        clock_gettime(CLOCK_MONOTONIC, &tend);
        uint64_t start_ns = (uint64_t)tstart.tv_sec * UINT64_C(1000000000) + tstart.tv_nsec;
        uint64_t end_ns = (uint64_t)tend.tv_sec * UINT64_C(1000000000) + tend.tv_nsec;
        times[i] = end_ns - start_ns;
        printf("total_ns=%llu ____", times[i]);
    }
    printf("result %llu \n", result);
}