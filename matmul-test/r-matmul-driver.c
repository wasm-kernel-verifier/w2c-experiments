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
#include "orig-matmul.c"

MODULE_AUTHOR("haibib");
MODULE_DESCRIPTION("raw matmul driver with fuel");
MODULE_LICENSE("GPL");

void populate(void);
int matmul(void);

static struct proc_dir_entry *matmul_proc_entry;

static ssize_t benchmark_matmul(struct file *file, char __user *buf, size_t count, loff_t *ppos) {
    u64 start_time = ktime_get_ns();
    int result = matmul();
    u64 end_time = ktime_get_ns();
    u64 total_time = end_time - start_time;
    printk(KERN_INFO "raw matmul-driver: total_ns=%llu\n", total_time);
    printk(KERN_INFO "raw matmul result: %d\n", result);
    return 0;
}

static const struct proc_ops proc_ops = 
{
  .proc_read = benchmark_matmul,
};

static int __init matmul_driver_init(void) {
    matmul_proc_entry = proc_create("raw-matmul", 0666, NULL, &proc_ops);
    populate();
    return 0;
}

static void __exit matmul_driver_exit(void) {
    proc_remove(matmul_proc_entry);
    printk(KERN_INFO "raw matmul-driver: exit\n");
}

module_init(matmul_driver_init);
module_exit(matmul_driver_exit);