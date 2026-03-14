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
MODULE_DESCRIPTION("needle driver");
MODULE_LICENSE("GPL");

static struct proc_dir_entry *needle_proc_entry;

volatile static char needle[5];
volatile static char haystack[10];

static void populate(void) {
    for (int i = 0; i < 5; i++) {
        needle[i] = 1;
    }
    needle[4] = 0;
    for (int i = 0; i < 10; i++) {
        haystack[i] = 1;
    }
}

static int search(void) {
    for (int i = 0; i < (10 - 5); i++) {
        int found = 1;
        for (int j = 0; j < 5; j++) {
            if (needle[j] != haystack[i+j]) {
                found = 0;
                break;
            }
        }
        if (found == 1) {
            return 1;
        }
    }
    return 0;
}

static ssize_t read(struct file *file, char __user *buf, size_t count, loff_t *ppos) {
    if (*ppos > 0)
        return 0;
    u64 start = ktime_get_ns();
    int n = 10000;
    int result = 2;
    for (int i = 0; i < n; i++) {
        result = search();
    }
    u64 total = ktime_get_ns() - start;
    printk(KERN_INFO "did %d iterations in %d nanoseconds > result is %d\n", n, total, result);
    return 0;
}

static const struct proc_ops proc_ops = 
{
  .proc_read = read,
};

// Custom init and exit methods
static int __init needle_init(void) {
    needle_proc_entry = proc_create("needle", 0666, NULL, &proc_ops);
    populate();
    printk(KERN_INFO "needle driver loaded.\n");
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
