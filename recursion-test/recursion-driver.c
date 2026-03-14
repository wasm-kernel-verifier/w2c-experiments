#include <linux/init.h>
#include <linux/module.h>
#include <linux/kernel.h>
#include "recursion.h"
#include "recursion.c"
#include "wasm-rt-impl.h"
#include "wasm-rt-impl.c"

MODULE_AUTHOR("haibib");
MODULE_DESCRIPTION("recursion with fuel");
MODULE_LICENSE("GPL");

static w2c_0x24recursion0x2Ewasm module_instance;

static int __init recursion_driver_init(void) {
    wasm_rt_init();

    // small fuel to witness exhaustion
    wasm_rt_set_fuel(1000);
    wasm2c_0x24recursion0x2Ewasm_instantiate(&module_instance);
    w2c_0x24recursion0x2Ewasm_main(&module_instance, 10);
    return 0;
}

static void __exit recursion_driver_exit(void) {
    printk(KERN_INFO "recursion-driver: exit\n");
    wasm2c_0x24recursion0x2Ewasm_free(&module_instance);
    wasm_rt_free();
}

module_init(recursion_driver_init);
module_exit(recursion_driver_exit);