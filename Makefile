subdir-ccflags-y += -I$(src)

# obj-m += add-test/add-driver.o
# obj-m += loop-test/loop-driver.o
# obj-m += timed-loop-test/timed-loop-driver.o
# obj-m += recursion-test/recursion-driver.o
# obj-m += memfunc-test/memfunc-driver.o
# obj-m += memfunc-test/r-memfunc-driver.o
obj-m += matmul-test/matmul-driver.o
obj-m += matmul-test/r-matmul-driver.o

# ccflags-remove-y += -fmin-function-alignment=16
# ccflags-remove-y += -fconserve-stack
# ccflags-remove-y += -mrecord-mcount
# ccflags-remove-y += -fsanitize=bounds-strict

all:
	make V=1 -C /lib/modules/$(uname -r)/build M=$(PWD) modules 2>&1 | sed -n '1,200p'
clean:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) clean