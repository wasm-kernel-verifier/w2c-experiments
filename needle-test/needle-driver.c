#include <linux/init.h>
#include <linux/module.h>
#include <linux/moduleparam.h>
#include <linux/kernel.h>
#include <linux/uaccess.h>
#include <linux/fs.h>
#include <linux/proc_fs.h>
#include <linux/wait.h>
#include <linux/kthread.h>
#include <linux/atomic.h>
#include <linux/ktime.h>
#include "needle.h"
#include "needle.c"
#include "wasm-rt-impl.h"
#include "wasm-rt-impl.c"

MODULE_AUTHOR("emma");
MODULE_DESCRIPTION("needle driver");
MODULE_LICENSE("GPL");

#define NEEDLE_LEN 30
#define HAYSTACK_LEN 2000

struct needle {
    int needle[NEEDLE_LEN];
    int haystack[HAYSTACK_LEN];
};

static struct proc_dir_entry *needle_proc_entry;
static w2c_0x24needle0x2Ewasm module_instance;
static struct needle needle_global;

static ssize_t benchmark_search(struct file *file, char __user *buf, size_t count, loff_t *ppos) {
    u32 wasm_off = module_instance.w2c_0x5F_heap_base;
    w2c_0x24needle0x2Ewasm_populate(&module_instance, wasm_off);
	const int n = 110;
	int times[110];
	int result = 0;
	for (int i = 0; i < n; i++) {
		__u64 start = ktime_get_ns();
        result = w2c_0x24needle0x2Ewasm_search(&module_instance, wasm_off);
		times[i] = ktime_get_ns() - start;
    }
	for (int i = 0; i < n; i++) {
        printk("%llu\n", times[i]);
    }
	printk("result: %d\n", result);
    return 0;
}

static const struct proc_ops proc_ops = 
{
  .proc_read = benchmark_search,
};

// Custom init and exit methods
static int __init needle_init(void) {
    needle_proc_entry = proc_create("needle", 0666, NULL, &proc_ops);
    wasm_rt_init();
    wasm_rt_set_fuel(1000000);

    wasm2c_0x24needle0x2Ewasm_instantiate(&module_instance);
    printk(KERN_INFO "needle driver loaded.\n");
    if (!needle_proc_entry)
    return -ENOMEM;
    return 0;
}
static void __exit needle_exit(void) {
    proc_remove(needle_proc_entry);
    wasm2c_0x24needle0x2Ewasm_free(&module_instance);
    wasm_rt_free();
    printk(KERN_INFO "end\n");
}
module_init(needle_init);
module_exit(needle_exit);
