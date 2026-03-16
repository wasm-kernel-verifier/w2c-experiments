subdir-ccflags-y += -I$(src)
subdir-ccflags-y += -I$(src)/include
subdir-ccflags-y += -I$(src)/w2c2/w2c2

# obj-m += add-test/add-driver.o
# obj-m += loop-test/loop-driver.o
# obj-m += timed-loop-test/timed-loop-driver.o
# obj-m += recursion-test/recursion-driver.o
# obj-m += memfunc-test/memfunc-driver.o
# obj-m += memfunc-test/raw-memfunc-driver.o
# obj-m += matmul-test/matmul-driver.o 
# obj-m += matmul-test/raw-matmul-driver.o
# obj-m += matmul-test/hybridized-matmul-driver.o
obj-m += needle-test/needle-driver.o
obj-m += needle-test/raw-needle-driver.o
obj-m += needle-test/hybridized-needle-driver.o

all:
	make LLVM=1 CC=$(PWD)/clang-filter.sh -C /lib/modules/$(shell uname -r)/build M=$(PWD) modules
clean:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) clean