subdir-ccflags-y += -I$(src)

# obj-m += add-test/add-driver.o
# obj-m += loop-test/loop-driver.o
# obj-m += timed-loop-test/timed-loop-driver.o
# obj-m += recursion-test/recursion-driver.o
#obj-m += benchmark/memfunc-driver.o
#obj-m += benchmark/r-memfunc-driver.o
#obj-m += benchmark/needle-driver.o
obj-m += benchmark/raw-needle-driver.o

#ccflags-remove-y += -fconserve-stack
#ccflags-remove-y += -fmin-function-alignment=16
#ccflags-remove-y += -mrecord-mcount
#ccflags-remove-y += -fsanitize=bounds-strict

all:
	make -d -C /lib/modules/$(shell uname -r)/build M=$(PWD) modules
clean:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) clean
