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

// Module metadata
MODULE_AUTHOR("emma");
MODULE_DESCRIPTION("needle driver");
MODULE_LICENSE("GPL");

static struct proc_dir_entry *needle_proc_entry;
static w2c_0x24needle0x2Ewasm needle;

static ssize_t read(struct file *file, char __user *buf, size_t count, loff_t *ppos) {
    if (*ppos > 0)
        return 0;
    u64 start = ktime_get_ns();
    int n = 10000;
    int result = 2;
    for (int i = 0; i < n; i++) {
        result = w2c_0x24needle0x2Ewasm_search(&needle);
    }
    u64 total = ktime_get_ns() - start;
    printk(KERN_INFO "did %d iterations in %llu nanoseconds > result = %d\n", n, total, result);
    return 0;
}

static const struct proc_ops proc_ops = 
{
  .proc_read = read,
};

// Custom init and exit methods
static int __init needle_init(void) {
    needle_proc_entry = proc_create("needle", 0666, NULL, &proc_ops);
    wasm_rt_init();
    wasm_rt_set_fuel(1000000);

    wasm2c_0x24needle0x2Ewasm_instantiate(&needle);
    w2c_0x24needle0x2Ewasm_populate(&needle);
    printk(KERN_INFO "needle driver loaded.\n");
    if (!needle_proc_entry)
    return -ENOMEM;
    return 0;
}
static void __exit needle_exit(void) {
    proc_remove(needle_proc_entry);
    wasm2c_0x24needle0x2Ewasm_free(&needle);
    wasm_rt_free();
    printk(KERN_INFO "end\n");
}
module_init(needle_init);
module_exit(needle_exit);
