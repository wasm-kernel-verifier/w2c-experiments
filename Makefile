subdir-ccflags-y += -I$(src)

# obj-m += add-test/add-driver.o
# obj-m += loop-test/loop-driver.o
# obj-m += timed-loop-test/timed-loop-driver.o
# obj-m += recursion-test/recursion-driver.o
obj-m += benchmark/memfunc-driver.o

all:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) modules
clean:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) clean