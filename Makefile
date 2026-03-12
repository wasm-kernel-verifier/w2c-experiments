subdir-ccflags-y += -I$(src)

obj-m += add-test/add-driver.o
obj-m += loop-test/loop-driver.o

all:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) modules
clean:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) clean