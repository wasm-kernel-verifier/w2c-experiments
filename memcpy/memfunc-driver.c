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

#include "w-memfunc.h"
#include "w-memfunc.c"

// Module metadata
MODULE_AUTHOR("emma");
MODULE_DESCRIPTION("memfunc driver");
MODULE_LICENSE("GPL");

static struct proc_dir_entry *memfunc_proc_entry;
static w2c_memfunc memfunc;

static ssize_t read(struct file *file, char __user *buf, size_t count, loff_t *ppos) {
  if (*ppos > 0)
    return 0;
  u64 start = ktime_get_ns();
  for (int i = 0; i < 1000; i++) {
    w2c_memfunc_memfunc(&memfunc, i);
  }
  u64 total = ktime_get_ns() - start;
  printk(KERN_INFO "did %d iterations in %d nanoseconds\n", 1000, total);
  return 0;
}

static const struct proc_ops proc_ops = 
{
  .proc_read = read,
};

// Custom init and exit methods
static int __init custom_init(void) {
 memfunc_proc_entry = proc_create("memfunc", 0666, NULL, &proc_ops);
 wasm_rt_init();
 wasm2c_memfunc_instantiate(&memfunc);
 printk(KERN_INFO "memfunc driver loaded.\n");
 if (!memfunc_proc_entry)
   return -ENOMEM;
 return 0;
}
static void __exit custom_exit(void) {
  proc_remove(memfunc_proc_entry);
  wasm2c_memfunc_free(&memfunc);
  wasm_rt_free();
  printk(KERN_INFO "end\n");
}
module_init(custom_init);
module_exit(custom_exit);

