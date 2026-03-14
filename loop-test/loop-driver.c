#include <linux/init.h>
#include <linux/module.h>
#include <linux/kernel.h>
#include "loop.h"
#include "loop.c"
#include "wasm-rt-impl.h"
#include "wasm-rt-impl.c"

MODULE_AUTHOR("haibib");
MODULE_DESCRIPTION("loop driver with fuel");
MODULE_LICENSE("GPL");

static w2c_0x24loop0x2Ewasm module_instance;

static int __init loop_driver_init(void) {
    wasm_rt_init();

    // small fuel to witness exhaustion
    wasm_rt_set_fuel(10);
    wasm2c_0x24loop0x2Ewasm_instantiate(&module_instance);
    w2c_0x24loop0x2Ewasm_0x5F_main_void(&module_instance);
    return 0;
}

static void __exit loop_driver_exit(void) {
    printk(KERN_INFO "loop-driver: exit\n");
    wasm2c_0x24loop0x2Ewasm_free(&module_instance);
    wasm_rt_free();
}

module_init(loop_driver_init);
module_exit(loop_driver_exit);