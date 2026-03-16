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
// #undef wasm_rt_consume_fuel(x)
#include "wasm-rt-impl.h"
#include "wasm-rt-impl.c"

MODULE_AUTHOR("haibib");
MODULE_DESCRIPTION("matmul driver with fuel");
MODULE_LICENSE("GPL");

#define N 32
#define V 2

struct mats {
    int A[N][N];
    int B[N][N];
};

static struct proc_dir_entry *matmul_proc_entry;
static w2c_matmul module_instance;
static struct mats mats_global;

static ssize_t benchmark_matmul(struct file *file, char __user *buf, size_t count, loff_t *ppos) {
    u32 wasm_off = module_instance.w2c_0x5F_heap_base;
    if (!wasm_off) {
        printk(KERN_ERR "wasm heap base is zero; cannot run\n");
        return -EINVAL;
    }
    wasm_rt_set_fuel(1000000);
    w2c_matmul_populate(&module_instance, wasm_off);
    int num = 110;
    int result = 0;
    u64 times[num];
    for (int i = 0; i < num; i++) {
        wasm_rt_set_fuel(1000000);
        u64 start_time = ktime_get_ns();
        result = w2c_matmul_matmul(&module_instance, wasm_off);
        times[i] = ktime_get_ns() - start_time;
        printk(KERN_INFO "total_ns=%llu ____", times[i]);
    }
    printk(KERN_INFO "\nmatmul result: %d\n", result);
    return 0;
}

static const struct proc_ops proc_ops = 
{
  .proc_read = benchmark_matmul,
};

static int __init matmul_driver_init(void) {
    matmul_proc_entry = proc_create("matmul", 0666, NULL, &proc_ops);
    wasm_rt_init();
    wasm2c_matmul_instantiate(&module_instance);
    return 0;
}

static void __exit matmul_driver_exit(void) {
    proc_remove(matmul_proc_entry);
    printk(KERN_INFO "matmul-driver: exit\n");
    wasm2c_matmul_free(&module_instance);
    wasm_rt_free();
}

module_init(matmul_driver_init);
module_exit(matmul_driver_exit);