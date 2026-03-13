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

// Module metadata
MODULE_AUTHOR("emma");
MODULE_DESCRIPTION("memfunc driver");
MODULE_LICENSE("GPL");

static struct proc_dir_entry *memfunc_proc_entry;

char memfunc(int n) {
    char src[500];
    char dst[500];
    __builtin_memset(src, 123, 500);
    __builtin_memcpy(dst, src, 500);
    return dst[n];
}

static ssize_t read(struct file *file, char __user *buf, size_t count, loff_t *ppos) {
    if (*ppos > 0)
        return 0;
    int n = 10000;
    u64 start = ktime_get_ns();
    for (int i = 0; i < n; i++) {
        memfunc(i % 500);
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

    printk(KERN_INFO "memfunc driver loaded.\n");
    if (!memfunc_proc_entry)
    return -ENOMEM;
    return 0;
}
static void __exit memfunc_exit(void) {
    proc_remove(memfunc_proc_entry);
    printk(KERN_INFO "end\n");
}
module_init(memfunc_init);
module_exit(memfunc_exit);