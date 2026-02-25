#include <linux/init.h>
#include <linux/module.h>
#include <linux/moduleparam.h>
#include <linux/kernel.h>
#include <linux/uaccess.h>
#include <linux/fs.h>
#include <linux/proc_fs.h>
#include "add.h"
#include "add.c"

// Module metadata
MODULE_AUTHOR("emma");
MODULE_DESCRIPTION("add driver");
MODULE_LICENSE("GPL");

static u32 last_result;
static DEFINE_MUTEX(add_lock);
static struct proc_dir_entry *add_proc_entry;
static w2c_add add;

static ssize_t add_write(struct file *file, const char __user *buf, size_t count, loff_t *ppos) {
  char kbuf[64];
  u32 x, y;
  if (count >= sizeof(kbuf))
    return -EINVAL;
  if (copy_from_user(kbuf, buf, count))
    return -EFAULT;
  kbuf[count] = '\0';
  if (sscanf(kbuf, "%u %u", &x, &y) != 2)
    return -EINVAL;
  mutex_lock(&add_lock);
  last_result = w2c_add_add(&add, x, y);
  //last_result = x+y;
  mutex_unlock(&add_lock);
  return count;
}

static ssize_t add_read(struct file *file, char __user *buf, size_t count, loff_t *ppos) {
  char kbuf[64];
  int len;
  if (*ppos > 0)
    return 0;
  len = snprintf(kbuf, sizeof(kbuf), "%u\n", last_result);
  if (copy_to_user(buf, kbuf, len))
    return -EFAULT;
  *ppos = len;
  return len;
}

static const struct proc_ops add_proc_ops = 
{
  .proc_read = add_read,
  .proc_write = add_write,
};

// Custom init and exit methods
static int __init custom_init(void) {
 printk(KERN_INFO "add driver loaded.\n");
 add_proc_entry = proc_create("add", 0666, NULL, &add_proc_ops);
 wasm_rt_init();
 wasm2c_add_instantiate(&add);
 if (!add_proc_entry)
   return -ENOMEM;
 return 0;
}
static void __exit custom_exit(void) {
  wasm2c_add_free(&add);
  wasm_rt_free();
  proc_remove(add_proc_entry);
  printk(KERN_INFO "end\n");
}
module_init(custom_init);
module_exit(custom_exit);

