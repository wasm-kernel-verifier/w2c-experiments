HOW TO RUN THE eBPF BENCHMARK:

To compile e-memfunc.c:
clang -target bpf -g -O2 -c e-memfunc.c -o e-memfunc.o

To load and attach the .o:
sudo bpftool prog load e-memfunc.o /sys/fs/bpf/memfunc autoattach