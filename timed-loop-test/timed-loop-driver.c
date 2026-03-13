#include <linux/init.h>
#include <linux/module.h>
#include <linux/kernel.h>
#include <linux/ktime.h>
#include "timed-loop.h"
#include "timed-loop.c"
#include "wasm-rt-impl.h"
#include "wasm-rt-impl.c"

MODULE_AUTHOR("haibib");
MODULE_DESCRIPTION("timed loop driver with fuel");
MODULE_LICENSE("GPL");

static w2c_0x24timed0x2Dloop0x2Ewasm module_instance;

static int __init loop_driver_init(void) {
    int ret = 0;
    wasm_rt_init();
    u64 start_time = ktime_get_ns();

    // small fuel to witness exhaustion
    wasm_rt_set_fuel(10000000);
    wasm2c_0x24timed0x2Dloop0x2Ewasm_instantiate(&module_instance);
    w2c_0x24timed0x2Dloop0x2Ewasm_0x5F_main_void(&module_instance);

    u64 end_time = ktime_get_ns();
    u64 total_time = end_time - start_time;
    printk(KERN_INFO "loop-driver: start_ns=%llu end_ns=%llu total_ns=%llu\n", start_time, end_time, total_time);
    return ret;
}

static void __exit loop_driver_exit(void) {
    printk(KERN_INFO "loop-driver: exit\n");
    wasm2c_0x24timed0x2Dloop0x2Ewasm_free(&module_instance);
    wasm_rt_free();
}

module_init(loop_driver_init);
module_exit(loop_driver_exit);