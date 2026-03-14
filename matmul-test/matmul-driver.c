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
#include "matmul.h"
#include "matmul.c"
#include "wasm-rt-impl.h"
#include "wasm-rt-impl.c"

MODULE_AUTHOR("haibib");
MODULE_DESCRIPTION("matmul driver with fuel");
MODULE_LICENSE("GPL");

static struct proc_dir_entry *matmul_proc_entry;
static w2c_0x24matmul0x2Ewasm module_instance;

static ssize_t benchmark_matmul(struct file *file, char __user *buf, size_t count, loff_t *ppos) {
    w2c_0x24matmul0x2Ewasm_populate(&module_instance);
    int num = 10;
    int result = 0;
    u64 times[num];
    for (int i = 0; i < num; i++) {
        u64 start_time = ktime_get_ns();
        result = w2c_0x24matmul0x2Ewasm_matmul(&module_instance);
        times[i] = ktime_get_ns() - start_time;
        printk(KERN_INFO "total_ns=%llu ____", times[i]);
    }
    printk(KERN_INFO "\nraw matmul result: %d\n", result);
    return 0;
}

static const struct proc_ops proc_ops = 
{
  .proc_read = benchmark_matmul,
};

static int __init matmul_driver_init(void) {
    matmul_proc_entry = proc_create("matmul", 0666, NULL, &proc_ops);
    wasm_rt_init();
    wasm_rt_set_fuel(1000000);
    wasm2c_0x24matmul0x2Ewasm_instantiate(&module_instance);
    return 0;
}

static void __exit matmul_driver_exit(void) {
    proc_remove(matmul_proc_entry);
    printk(KERN_INFO "matmul-driver: exit\n");
    wasm2c_0x24matmul0x2Ewasm_free(&module_instance);
    wasm_rt_free();
}

module_init(matmul_driver_init);
module_exit(matmul_driver_exit);