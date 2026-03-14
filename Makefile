subdir-ccflags-y += -I$(src)

# obj-m += add-test/add-driver.o
# obj-m += loop-test/loop-driver.o
# obj-m += timed-loop-test/timed-loop-driver.o
# obj-m += recursion-test/recursion-driver.o
# obj-m += memfunc-test/memfunc-driver.o
# obj-m += memfunc-test/r-memfunc-driver.o
obj-m += matmul-test/matmul-driver.o
obj-m += matmul-test/r-matmul-driver.o
# obj-m += needle-test/needle-driver.o
# obj-m += needle-test/raw-needle-driver.o

all:
	make LLVM=1 CC=/home/haibibgoogle/w2c-experiments/clang-filter.sh -C /lib/modules/$(shell uname -r)/build M=$(PWD) modules
clean:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) clean