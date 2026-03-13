#include <linux/bpf.h>
#include <bpf/bpf_helpers.h>
//#include "memfunc.c"

SEC("tp/syscalls/sys_enter_execve")
int detect_execve() {
  bpf_printk("%s\n", "execve called");
  bpf_printk("starting benchmarks!\n");
  __u64 n = 1000000;
  __u64 test = 0;
  __u64 start = bpf_ktime_get_ns();
  for (int i = 0; i < n; i++) {
    //memfunc(2);
    char src[500];
    char dst[500];
    __builtin_memset(src, 123, 500);
    __builtin_memcpy(dst, src, 500);
    test = dst[i % 500];
  }
  __u64 total = bpf_ktime_get_ns() - start;
  bpf_printk("finished benchmarks! it took %d nanoseconds to do %d iterations\n", total, n);
  bpf_printk("final value of test: %d\n", test);
  return 1;
}

char _license[] SEC("license") = "GPL";
