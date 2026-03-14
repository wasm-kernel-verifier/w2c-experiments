#include <linux/bpf.h>
#include <bpf/bpf_helpers.h>
#include <linux/types.h>

#define N 32
#define V 2

struct mats {
    int A[N][N];
    int B[N][N];
};

struct {
    __uint(type, BPF_MAP_TYPE_PERCPU_ARRAY);
    __uint(max_entries, 1);
    __type(key, __u32);
    __type(value, struct mats);
} mats_map SEC(".maps");

SEC("tp/syscalls/sys_enter_execve")
int detect_execve() {
    bpf_printk("%s\n", "execve called");
    bpf_printk("starting benchmarks!\n");
    __u32 key = 0;
    struct mats *m = bpf_map_lookup_elem(&mats_map, &key);
    for (int i = 0; i < N; i++) {
        for (int j = 0; j < N; j++) {
            m->A[i][j] = V;
            m->B[i][j] = V;
        }
    }
    __u64 start = bpf_ktime_get_ns();
    int result = 0;
    for (int i = 0; i < N; i++) {
        for (int j = 0; j < N; j++) {
            #pragma unroll
            for (int k = 0; k < N; k++) {
                result += m->A[i][k] * m->B[k][j];
            }
        }
    }
    __u64 total = bpf_ktime_get_ns() - start;
    bpf_printk("finished benchmarks! it took %d nanoseconds\n", total);
    bpf_printk("final value of test: %d\n", result);
    return 1;
}

char _license[] SEC("license") = "GPL";
