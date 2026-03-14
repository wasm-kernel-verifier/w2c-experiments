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

#include "memfunc.h"
#include "memfunc.c"

#include "wasm-rt-impl.h"
#include "wasm-rt-impl.c"

// Module metadata
MODULE_AUTHOR("emma");
MODULE_DESCRIPTION("memfunc driver");
MODULE_LICENSE("GPL");

static struct proc_dir_entry *memfunc_proc_entry;
static w2c_0x24memfunc0x2Ewasm memfunc;

static ssize_t read(struct file *file, char __user *buf, size_t count, loff_t *ppos) {
    if (*ppos > 0)
        return 0;
    u64 start = ktime_get_ns();
    int n = 10000;
    for (int i = 0; i < n; i++) {
        w2c_0x24memfunc0x2Ewasm_memfunc(&memfunc, i);
    }
    u64 total = ktime_get_ns() - start;
    printk(KERN_INFO "did %d iterations in %d nanoseconds\n", n, total);
    return 0;
}

static const struct proc_ops proc_ops = 
{
  .proc_read = read,
};

// Custom init and exit methods
static int __init memfunc_init(void) {
    memfunc_proc_entry = proc_create("memfunc", 0666, NULL, &proc_ops);
    wasm_rt_init();
    wasm_rt_set_fuel(1000000);

    wasm2c_0x24memfunc0x2Ewasm_instantiate(&memfunc);
    printk(KERN_INFO "memfunc driver loaded.\n");
    if (!memfunc_proc_entry)
    return -ENOMEM;
    return 0;
}
static void __exit memfunc_exit(void) {
    proc_remove(memfunc_proc_entry);
    wasm2c_0x24memfunc0x2Ewasm_free(&memfunc);
    wasm_rt_free();
    printk(KERN_INFO "end\n");
}
module_init(memfunc_init);
module_exit(memfunc_exit);