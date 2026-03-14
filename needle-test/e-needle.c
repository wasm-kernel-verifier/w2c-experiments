#include <linux/bpf.h>
#include <bpf/bpf_helpers.h>
#include <linux/types.h>


SEC("tp/syscalls/sys_enter_execve")
int detect_execve() {
  bpf_printk("%s\n", "execve called");
  bpf_printk("starting benchmarks!\n");
  __u64 n = 1000;
  __u64 test = 0;
  volatile char needle[5];
  volatile char haystack[10];
    for (int i = 0; i < 5; i++) {
        needle[i] = 1;
    }
    needle[4] = 0;
    for (int i = 0; i < 10; i++) {
        haystack[i] = 1;
    }

  __u64 start = bpf_ktime_get_ns();
  for (int i = 0; i < n; i++) {
      test = 0;
      #pragma unroll
      for (int i = 0; i < (10 - 5); i++) {
        int found = 0;
        #pragma unroll
        for (int j = 0; j < 5; j++) {
            found = found | (needle[j] - haystack[i+j]);
        }
        if (found == 0) {
          test = 1;
        }
      }
  }
  __u64 total = bpf_ktime_get_ns() - start;
  bpf_printk("finished benchmarks! it took %d nanoseconds to do %d iterations\n", total, n);
  bpf_printk("final value of test: %d\n", test);
  return 1;
}

char _license[] SEC("license") = "GPL";
