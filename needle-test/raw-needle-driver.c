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
#include "orig-needle.c"

// Module metadata
MODULE_AUTHOR("emma");
MODULE_DESCRIPTION("needle driver");
MODULE_LICENSE("GPL");

static struct proc_dir_entry *needle_proc_entry;
static struct needle needle_global;

static ssize_t benchmark_search(struct file *file, char __user *buf, size_t count, loff_t *ppos) {
    populate(&needle_global);
	const int num = 110;
	int times[110];
	int result = 0;
	for (int i = 0; i < num; i++) {
		__u64 start = ktime_get_ns();
        result = search(&needle_global);
		times[i] = ktime_get_ns() - start;
    }
	for (int i = 0; i < num; i++) {
        printk(KERN_INFO "%llu ____", times[i]);
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
    needle_proc_entry = proc_create("raw-needle", 0666, NULL, &proc_ops);
    printk(KERN_INFO "raw needle driver loaded.\n");
    if (!needle_proc_entry)
      return -ENOMEM;
    return 0;
}
static void __exit needle_exit(void) {
    proc_remove(needle_proc_entry);
    printk(KERN_INFO "end\n");
}
module_init(needle_init);
module_exit(needle_exit);
