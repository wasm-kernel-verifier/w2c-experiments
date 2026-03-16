#include <linux/bpf.h>
#include <bpf/bpf_helpers.h>
#include <linux/types.h>
#include "orig-needle.c"

struct {
    __uint(type, BPF_MAP_TYPE_PERCPU_ARRAY);
    __uint(max_entries, 1);
    __type(key, __u32);
    __type(value, struct needle);
} needle_map SEC(".maps");

SEC("tp/syscalls/sys_enter_execve")
int detect_execve() {
	bpf_printk("%s\n", "execve called");
	bpf_printk("starting benchmarks!\n");
    __u32 key = 0;
    struct needle *needle_global = bpf_map_lookup_elem(&needle_map, &key);
    populate(needle_global);
	const int n = 110;
	int times[110];
	int result = 0;
	for (int i = 0; i < n; i++) {
		__u64 start = bpf_ktime_get_ns();
        result = search(needle_global);
		times[i] = bpf_ktime_get_ns() - start;
        bpf_printk("%llu\n", times[i]);
    }
	bpf_printk("result: %d\n", result);
	return 1;
}

char _license[] SEC("license") = "GPL";
