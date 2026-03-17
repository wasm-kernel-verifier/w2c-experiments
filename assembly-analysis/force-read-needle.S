
needle-test/needle-driver.o:	file format elf64-x86-64

isassembly of section .text:

<__pfx_wasm_rt_is_initialized>:
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop

<wasm_rt_is_initialized>:
llq	0x15 <wasm_rt_is_initialized+0x5>
pushq	%rbp
movq	%rsp, %rbp
movb	$0x1, %al
popq	%rbp
jmp	0x22 <wasm_rt_is_initialized+0x12>
nopw	%cs:(%rax,%rax)

<__pfx_w2c_needle_memory>:
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop

<w2c_needle_memory>:
llq	0x45 <w2c_needle_memory+0x5>
pushq	%rbp
movq	%rsp, %rbp
leaq	0x28(%rdi), %rax
popq	%rbp
xorl	%edi, %edi
jmp	0x56 <w2c_needle_memory+0x16>
nopw	%cs:(%rax,%rax)

<__pfx_w2c_needle_0x5F_wasm_call_ctors>:
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop

<w2c_needle_0x5F_wasm_call_ctors>:
llq	0x75 <w2c_needle_0x5F_wasm_call_ctors+0x5>
movq	(%rip), %rax            # 0x7c <w2c_needle_0x5F_wasm_call_ctors+0xc>
testq	%rax, %rax
je	0x97 <w2c_needle_0x5F_wasm_call_ctors+0x27>
q	%rax
movq	%rax, (%rip)            # 0x8b <w2c_needle_0x5F_wasm_call_ctors+0x1b>
xorl	%eax, %eax
xorl	%edi, %edi
xorl	%esi, %esi
jmp	0x97 <w2c_needle_0x5F_wasm_call_ctors+0x27>
pushq	%rbp
movq	%rsp, %rbp
movq	$0x0, %rdi
movl	$0xb, %esi
llq	0xac <w2c_needle_0x5F_wasm_call_ctors+0x3c>
ud2
popq	%rbp
xorl	%eax, %eax
xorl	%edi, %edi
xorl	%esi, %esi
jmp	0xbb <w2c_needle_0x5F_wasm_call_ctors+0x4b>
nopl	(%rax,%rax)

<__pfx_w2c_needle_populate>:
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop

<w2c_needle_populate>:
llq	0xd5 <w2c_needle_populate+0x5>
pushq	%rbp
movq	%rsp, %rbp
pushq	%r15
pushq	%r14
pushq	%r12
pushq	%rbx
movl	%esi, %ebx
movq	(%rip), %rax            # 0xe9 <w2c_needle_populate+0x19>
testq	%rax, %rax
je	0x3ec <w2c_needle_populate+0x31c>
q	%rax
movq	%rax, (%rip)            # 0xfc <w2c_needle_populate+0x2c>
testl	%ebx, %ebx
je	0x40d <w2c_needle_populate+0x33d>
movl	%ebx, %r14d
leaq	0x28(%r14), %rax
mpq	0x50(%rdi), %rax
ja	0x423 <w2c_needle_populate+0x353>
movq	0x28(%rdi), %rax
movabsq	$0x900000008, %rcx      # imm = 0x900000008
movq	%rcx, 0x20(%rax,%r14)
leaq	0x20(%r14), %rax
mpq	0x50(%rdi), %rax
ja	0x441 <w2c_needle_populate+0x371>
movq	0x28(%rdi), %rax
movabsq	$0x700000006, %rcx      # imm = 0x700000006
movq	%rcx, 0x18(%rax,%r14)
leaq	0x18(%r14), %rax
mpq	0x50(%rdi), %rax
ja	0x45f <w2c_needle_populate+0x38f>
movq	0x28(%rdi), %rax
movabsq	$0x500000004, %rcx      # imm = 0x500000004
movq	%rcx, 0x10(%rax,%r14)
leaq	0x8(%r14), %r15
leaq	0x10(%r14), %rax
mpq	0x50(%rdi), %rax
ja	0x47d <w2c_needle_populate+0x3ad>
movq	0x28(%rdi), %rax
movabsq	$0x300000002, %rcx      # imm = 0x300000002
movq	%rcx, (%rax,%r15)
mpq	0x50(%rdi), %r15
ja	0x49b <w2c_needle_populate+0x3cb>
movq	0x28(%rdi), %rax
movabsq	$0x100000000, %rcx      # imm = 0x100000000
movq	%rcx, (%rax,%r14)
l	$0x4e28, %ebx           # imm = 0x4E28
movl	$0x1380, %r14d          # imm = 0x1380
movq	(%rip), %rax            # 0x1bd <w2c_needle_populate+0xed>
testq	%rax, %rax
je	0x2d1 <w2c_needle_populate+0x201>
q	%rax
movq	%rax, (%rip)            # 0x1d0 <w2c_needle_populate+0x100>
leal	0x18(%rbx), %r15d
leaq	0x4(%r15), %rax
mpq	0x50(%rdi), %rax
ja	0x2fc <w2c_needle_populate+0x22c>
leal	0x6(%r14), %eax
movq	0x28(%rdi), %rcx
movl	%eax, (%rcx,%r15)
leal	0x1c(%rbx), %r15d
leaq	0x4(%r15), %rax
mpq	0x50(%rdi), %rax
ja	0x31a <w2c_needle_populate+0x24a>
leal	0x7(%r14), %eax
movq	0x28(%rdi), %rcx
movl	%eax, (%rcx,%r15)
leal	0x14(%rbx), %r15d
leaq	0x4(%r15), %rax
mpq	0x50(%rdi), %rax
ja	0x338 <w2c_needle_populate+0x268>
leal	0x5(%r14), %eax
movq	0x28(%rdi), %rcx
movl	%eax, (%rcx,%r15)
leal	0x10(%rbx), %r15d
leaq	0x4(%r15), %rax
mpq	0x50(%rdi), %rax
ja	0x356 <w2c_needle_populate+0x286>
leal	0x4(%r14), %eax
movq	0x28(%rdi), %rcx
movl	%eax, (%rcx,%r15)
leal	0xc(%rbx), %r15d
leaq	0x4(%r15), %rax
mpq	0x50(%rdi), %rax
ja	0x374 <w2c_needle_populate+0x2a4>
leal	0x3(%r14), %eax
movq	0x28(%rdi), %rcx
movl	%eax, (%rcx,%r15)
leal	0x8(%rbx), %r15d
leaq	0x4(%r15), %rax
mpq	0x50(%rdi), %rax
ja	0x392 <w2c_needle_populate+0x2c2>
leal	0x2(%r14), %eax
movq	0x28(%rdi), %rcx
movl	%eax, (%rcx,%r15)
leal	0x4(%rbx), %r15d
leaq	0x4(%r15), %rax
mpq	0x50(%rdi), %rax
ja	0x3b0 <w2c_needle_populate+0x2e0>
leal	0x1(%r14), %eax
movq	0x28(%rdi), %rcx
movl	%eax, (%rcx,%r15)
movl	%ebx, %r15d
leaq	0x4(%r15), %rax
mpq	0x50(%rdi), %rax
ja	0x3ce <w2c_needle_populate+0x2fe>
movq	0x28(%rdi), %rax
movl	%r14d, (%rax,%r15)
l	$-0x8, %r14d
l	$-0x20, %ebx
mpl	$-0x8, %r14d
jne	0x1b6 <w2c_needle_populate+0xe6>
jmp	0x40d <w2c_needle_populate+0x33d>
movq	%rdi, %r15
movq	$0x0, %rdi
movl	$0xb, %esi
llq	0x2e5 <w2c_needle_populate+0x215>
movq	%r15, %rdi
ud2
leal	0x18(%rbx), %r15d
leaq	0x4(%r15), %rax
mpq	0x50(%rdi), %rax
jbe	0x1e2 <w2c_needle_populate+0x112>
movq	%rdi, %r12
movq	$0x0, %rdi
movl	$0x1, %esi
llq	0x310 <w2c_needle_populate+0x240>
movq	%r12, %rdi
ud2
jmp	0x1e2 <w2c_needle_populate+0x112>
movq	%rdi, %r12
movq	$0x0, %rdi
movl	$0x1, %esi
llq	0x32e <w2c_needle_populate+0x25e>
movq	%r12, %rdi
ud2
jmp	0x200 <w2c_needle_populate+0x130>
movq	%rdi, %r12
movq	$0x0, %rdi
movl	$0x1, %esi
llq	0x34c <w2c_needle_populate+0x27c>
movq	%r12, %rdi
ud2
jmp	0x21e <w2c_needle_populate+0x14e>
movq	%rdi, %r12
movq	$0x0, %rdi
movl	$0x1, %esi
llq	0x36a <w2c_needle_populate+0x29a>
movq	%r12, %rdi
ud2
jmp	0x23c <w2c_needle_populate+0x16c>
movq	%rdi, %r12
movq	$0x0, %rdi
movl	$0x1, %esi
llq	0x388 <w2c_needle_populate+0x2b8>
movq	%r12, %rdi
ud2
jmp	0x25a <w2c_needle_populate+0x18a>
movq	%rdi, %r12
movq	$0x0, %rdi
movl	$0x1, %esi
llq	0x3a6 <w2c_needle_populate+0x2d6>
movq	%r12, %rdi
ud2
jmp	0x278 <w2c_needle_populate+0x1a8>
movq	%rdi, %r12
movq	$0x0, %rdi
movl	$0x1, %esi
llq	0x3c4 <w2c_needle_populate+0x2f4>
movq	%r12, %rdi
ud2
jmp	0x296 <w2c_needle_populate+0x1c6>
movq	%rdi, %r12
movq	$0x0, %rdi
movl	$0x1, %esi
llq	0x3e2 <w2c_needle_populate+0x312>
movq	%r12, %rdi
ud2
jmp	0x2b3 <w2c_needle_populate+0x1e3>
movq	%rdi, %r14
movq	$0x0, %rdi
movl	$0xb, %esi
llq	0x400 <w2c_needle_populate+0x330>
movq	%r14, %rdi
ud2
testl	%ebx, %ebx
jne	0x104 <w2c_needle_populate+0x34>
popq	%rbx
popq	%r12
popq	%r14
popq	%r15
popq	%rbp
xorl	%eax, %eax
xorl	%ecx, %ecx
xorl	%edi, %edi
xorl	%esi, %esi
jmp	0x423 <w2c_needle_populate+0x353>
movq	%rdi, %r15
movq	$0x0, %rdi
movl	$0x1, %esi
llq	0x437 <w2c_needle_populate+0x367>
movq	%r15, %rdi
ud2
jmp	0x115 <w2c_needle_populate+0x45>
movq	%rdi, %r15
movq	$0x0, %rdi
movl	$0x1, %esi
llq	0x455 <w2c_needle_populate+0x385>
movq	%r15, %rdi
ud2
jmp	0x136 <w2c_needle_populate+0x66>
movq	%rdi, %r15
movq	$0x0, %rdi
movl	$0x1, %esi
llq	0x473 <w2c_needle_populate+0x3a3>
movq	%r15, %rdi
ud2
jmp	0x157 <w2c_needle_populate+0x87>
movq	%rdi, %r12
movq	$0x0, %rdi
movl	$0x1, %esi
llq	0x491 <w2c_needle_populate+0x3c1>
movq	%r12, %rdi
ud2
jmp	0x17c <w2c_needle_populate+0xac>
movq	%rdi, %r15
movq	$0x0, %rdi
movl	$0x1, %esi
llq	0x4af <w2c_needle_populate+0x3df>
movq	%r15, %rdi
ud2
jmp	0x198 <w2c_needle_populate+0xc8>
nopl	(%rax)

<__pfx_w2c_needle_search>:
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop

<w2c_needle_search>:
llq	0x4d5 <w2c_needle_search+0x5>
pushq	%rbp
movq	%rsp, %rbp
pushq	%r15
pushq	%r14
pushq	%r13
pushq	%r12
pushq	%rbx
subq	$0x58, %rsp
movl	%esi, -0x44(%rbp)
movq	%rdi, -0x40(%rbp)
movq	(%rip), %rax            # 0x4f4 <w2c_needle_search+0x24>
testq	%rax, %rax
je	0x91e <w2c_needle_search+0x44e>
q	%rax
movq	%rax, (%rip)            # 0x507 <w2c_needle_search+0x37>
mpl	$0x0, -0x44(%rbp)
je	0x93b <w2c_needle_search+0x46b>
movl	-0x44(%rbp), %r12d
leaq	0x4e28(%r12), %rax
movq	-0x40(%rbp), %rcx
mpq	0x50(%rcx), %rax
ja	0x965 <w2c_needle_search+0x495>
movq	-0x40(%rbp), %rcx
movq	0x28(%rcx), %rax
movl	0x4e24(%rax,%r12), %r14d
leaq	0x4e2c(%r12), %rax
mpq	0x50(%rcx), %rax
ja	0x97d <w2c_needle_search+0x4ad>
movq	-0x40(%rbp), %rcx
movq	0x28(%rcx), %rax
movl	0x4e28(%rax,%r12), %eax
movl	%eax, -0x54(%rbp)
leaq	0x4e30(%r12), %rax
mpq	0x50(%rcx), %rax
ja	0x995 <w2c_needle_search+0x4c5>
movq	-0x40(%rbp), %rcx
movq	0x28(%rcx), %rax
movl	0x4e2c(%rax,%r12), %eax
movl	%eax, -0x50(%rbp)
leaq	0x4e34(%r12), %rax
mpq	0x50(%rcx), %rax
ja	0x9ad <w2c_needle_search+0x4dd>
movq	-0x40(%rbp), %rcx
movq	0x28(%rcx), %rax
movl	0x4e30(%rax,%r12), %r10d
leaq	0x4e38(%r12), %rax
mpq	0x50(%rcx), %rax
ja	0x9c5 <w2c_needle_search+0x4f5>
movq	-0x40(%rbp), %rcx
movq	0x28(%rcx), %rax
movl	0x4e34(%rax,%r12), %r11d
leaq	0x4e3c(%r12), %rax
mpq	0x50(%rcx), %rax
ja	0x9e9 <w2c_needle_search+0x519>
movq	-0x40(%rbp), %rcx
movq	0x28(%rcx), %rax
movl	0x4e38(%rax,%r12), %r9d
leaq	0x4e40(%r12), %rax
mpq	0x50(%rcx), %rax
ja	0xa13 <w2c_needle_search+0x543>
movq	-0x40(%rbp), %rcx
movq	0x28(%rcx), %rax
movl	0x4e3c(%rax,%r12), %r13d
leaq	0x4e44(%r12), %rax
mpq	0x50(%rcx), %rax
ja	0xa45 <w2c_needle_search+0x575>
movq	-0x40(%rbp), %rdx
movq	0x28(%rdx), %rax
movl	0x4e40(%rax,%r12), %ecx
leaq	0x4e48(%r12), %rax
mpq	0x50(%rdx), %rax
ja	0xa7f <w2c_needle_search+0x5af>
movq	-0x40(%rbp), %rdx
movq	0x28(%rdx), %rax
movl	0x4e44(%rax,%r12), %ebx
leaq	0x4(%r12), %rax
mpq	0x50(%rdx), %rax
ja	0xabf <w2c_needle_search+0x5ef>
movq	-0x40(%rbp), %rdx
movq	0x28(%rdx), %rax
movl	(%rax,%r12), %eax
movl	%eax, -0x7c(%rbp)
leaq	0x8(%r12), %rax
mpq	0x50(%rdx), %rax
ja	0xb07 <w2c_needle_search+0x637>
movq	-0x40(%rbp), %rdx
movq	0x28(%rdx), %rax
movl	0x4(%rax,%r12), %eax
movl	%eax, -0x78(%rbp)
leaq	0xc(%r12), %rax
mpq	0x50(%rdx), %rax
ja	0xb4f <w2c_needle_search+0x67f>
movq	-0x40(%rbp), %rdx
movq	0x28(%rdx), %rax
movl	0x8(%rax,%r12), %eax
movl	%eax, -0x74(%rbp)
leaq	0x10(%r12), %rax
mpq	0x50(%rdx), %rax
ja	0xb97 <w2c_needle_search+0x6c7>
movq	-0x40(%rbp), %rdx
movq	0x28(%rdx), %rax
movl	0xc(%rax,%r12), %eax
movl	%eax, -0x70(%rbp)
leaq	0x14(%r12), %rax
mpq	0x50(%rdx), %rax
ja	0xbdf <w2c_needle_search+0x70f>
movq	-0x40(%rbp), %rdx
movq	0x28(%rdx), %rax
movl	0x10(%rax,%r12), %eax
movl	%eax, -0x6c(%rbp)
leaq	0x18(%r12), %rax
mpq	0x50(%rdx), %rax
ja	0xc27 <w2c_needle_search+0x757>
movq	-0x40(%rbp), %rdx
movq	0x28(%rdx), %rax
movl	0x14(%rax,%r12), %eax
movl	%eax, -0x68(%rbp)
leaq	0x1c(%r12), %rax
mpq	0x50(%rdx), %rax
ja	0xc6f <w2c_needle_search+0x79f>
movq	-0x40(%rbp), %rdx
movq	0x28(%rdx), %rax
movl	0x18(%rax,%r12), %eax
movl	%eax, -0x64(%rbp)
leaq	0x20(%r12), %rax
mpq	0x50(%rdx), %rax
ja	0xcb7 <w2c_needle_search+0x7e7>
movq	-0x40(%rbp), %rdx
movq	0x28(%rdx), %rax
movl	0x1c(%rax,%r12), %eax
movl	%eax, -0x60(%rbp)
leaq	0x24(%r12), %rax
mpq	0x50(%rdx), %rax
ja	0xcff <w2c_needle_search+0x82f>
movq	-0x40(%rbp), %rdx
movq	0x28(%rdx), %rax
movl	0x20(%rax,%r12), %eax
movl	%eax, -0x5c(%rbp)
leaq	0x28(%r12), %rax
mpq	0x50(%rdx), %rax
ja	0xd47 <w2c_needle_search+0x877>
l	$0x4e20, -0x44(%rbp)    # imm = 0x4E20
movq	-0x40(%rbp), %rax
movq	0x28(%rax), %rax
movl	0x24(%rax,%r12), %eax
movl	%eax, -0x2c(%rbp)
movl	$0x1, %eax
movl	$0x1388, %r12d          # imm = 0x1388
movl	%ecx, -0x38(%rbp)
movl	%r13d, %esi
movl	%r9d, %r13d
movl	%r11d, %r9d
movl	%r10d, %r11d
movl	-0x50(%rbp), %r10d
movl	-0x54(%rbp), %ecx
movl	%ecx, -0x50(%rbp)
movl	%r14d, -0x54(%rbp)
movq	(%rip), %rcx            # 0x7bc <w2c_needle_search+0x2ec>
testq	%rcx, %rcx
je	0x8a8 <w2c_needle_search+0x3d8>
q	%rcx
movq	%rcx, (%rip)            # 0x7cf <w2c_needle_search+0x2ff>
movl	-0x44(%rbp), %r15d
leaq	0x4(%r15), %rcx
movq	-0x40(%rbp), %rdx
mpq	0x50(%rdx), %rcx
ja	0x8e2 <w2c_needle_search+0x412>
movq	-0x40(%rbp), %rcx
movq	0x28(%rcx), %rcx
movl	(%rcx,%r15), %r14d
movl	-0x50(%rbp), %ecx
subl	-0x74(%rbp), %ecx
movl	%r10d, %edx
subl	-0x70(%rbp), %edx
orl	%ecx, %edx
movl	%r11d, %ecx
subl	-0x6c(%rbp), %ecx
movl	%r9d, %r8d
subl	-0x68(%rbp), %r8d
orl	%ecx, %r8d
movl	%r13d, %ecx
subl	-0x64(%rbp), %ecx
orl	%r8d, %ecx
movl	%esi, %r8d
subl	-0x60(%rbp), %r8d
movl	%r9d, %r15d
movl	-0x38(%rbp), %edi
movl	%edi, %r9d
subl	-0x5c(%rbp), %r9d
orl	%r8d, %r9d
movl	-0x54(%rbp), %r8d
subl	-0x78(%rbp), %r8d
subl	-0x2c(%rbp), %ebx
orl	%r8d, %ebx
orl	%edx, %ebx
orl	%ecx, %ebx
movl	%r14d, %ecx
subl	-0x7c(%rbp), %ecx
orl	%r9d, %ebx
movl	%r15d, %r9d
orl	%ecx, %ebx
movl	%ebx, %ecx
shrl	%ecx
ndl	$0x2aaaaaaa, %ecx       # imm = 0x2AAAAAAA
movl	%ebx, %edx
shrl	$0x2, %edx
ndl	$0x11111111, %edx       # imm = 0x11111111
orl	%ecx, %edx
orl	%ebx, %edx
movl	%edx, %ecx
shrl	$0x4, %ecx
ndl	$0x1010101, %ecx        # imm = 0x1010101
orl	%edx, %ecx
movl	%ecx, %edx
shrl	$0x8, %edx
ndl	$0x10001, %edx          # imm = 0x10001
orl	%ecx, %edx
movl	%edx, %ecx
shrl	$0x10, %ecx
ndl	$0x1, %ecx
orl	%edx, %ecx
ndl	%ecx, %eax
l	$-0x4, -0x44(%rbp)
l	%r12d
movl	%edi, %ebx
movl	%esi, %ecx
mpl	$0x9, %r12d
ja	0x798 <w2c_needle_search+0x2c8>
jmp	0x93d <w2c_needle_search+0x46d>
movl	%esi, %r14d
movq	$0x0, %rdi
movl	$0xb, %esi
movl	%eax, -0x30(%rbp)
movl	%r10d, %r15d
movl	%r11d, -0x4c(%rbp)
movl	%r9d, -0x48(%rbp)
llq	0x8ca <w2c_needle_search+0x3fa>
movl	%r14d, %esi
movl	-0x48(%rbp), %r9d
movl	-0x4c(%rbp), %r11d
movl	%r15d, %r10d
movl	-0x30(%rbp), %eax
ud2
jmp	0x7cf <w2c_needle_search+0x2ff>
movl	%esi, %r14d
movq	$0x0, %rdi
movl	$0x1, %esi
movl	%eax, -0x30(%rbp)
movl	%r10d, -0x58(%rbp)
movl	%r11d, -0x4c(%rbp)
movl	%r9d, -0x48(%rbp)
llq	0x905 <w2c_needle_search+0x435>
movl	%r14d, %esi
movl	-0x48(%rbp), %r9d
movl	-0x4c(%rbp), %r11d
movl	-0x58(%rbp), %r10d
movl	-0x30(%rbp), %eax
ud2
jmp	0x7e5 <w2c_needle_search+0x315>
movq	$0x0, %rdi
movl	$0xb, %esi
llq	0x92f <w2c_needle_search+0x45f>
ud2
mpl	$0x0, -0x44(%rbp)
jne	0x511 <w2c_needle_search+0x41>
xorl	%eax, %eax
q	$0x58, %rsp
popq	%rbx
popq	%r12
popq	%r13
popq	%r14
popq	%r15
popq	%rbp
xorl	%ecx, %ecx
xorl	%edi, %edi
xorl	%edx, %edx
xorl	%esi, %esi
xorl	%r8d, %r8d
xorl	%r9d, %r9d
xorl	%r10d, %r10d
xorl	%r11d, %r11d
jmp	0x965 <w2c_needle_search+0x495>
movq	$0x0, %rdi
movl	$0x1, %esi
llq	0x976 <w2c_needle_search+0x4a6>
ud2
jmp	0x52b <w2c_needle_search+0x5b>
movq	$0x0, %rdi
movl	$0x1, %esi
llq	0x98e <w2c_needle_search+0x4be>
ud2
jmp	0x54d <w2c_needle_search+0x7d>
movq	$0x0, %rdi
movl	$0x1, %esi
llq	0x9a6 <w2c_needle_search+0x4d6>
ud2
jmp	0x572 <w2c_needle_search+0xa2>
movq	$0x0, %rdi
movl	$0x1, %esi
llq	0x9be <w2c_needle_search+0x4ee>
ud2
jmp	0x597 <w2c_needle_search+0xc7>
movq	$0x0, %rdi
movl	$0x1, %esi
movq	%r12, %rbx
movl	%r10d, %r12d
llq	0x9dc <w2c_needle_search+0x50c>
movl	%r12d, %r10d
movq	%rbx, %r12
ud2
jmp	0x5b9 <w2c_needle_search+0xe9>
movq	$0x0, %rdi
movl	$0x1, %esi
movq	%r12, %rbx
movl	%r10d, %r12d
movl	%r11d, %r13d
llq	0xa03 <w2c_needle_search+0x533>
movl	%r13d, %r11d
movl	%r12d, %r10d
movq	%rbx, %r12
ud2
jmp	0x5db <w2c_needle_search+0x10b>
movq	$0x0, %rdi
movl	$0x1, %esi
movq	%r12, -0x38(%rbp)
movl	%r10d, %r12d
movl	%r11d, %r13d
movl	%r9d, %r15d
llq	0xa31 <w2c_needle_search+0x561>
movl	%r15d, %r9d
movl	%r13d, %r11d
movl	%r12d, %r10d
movq	-0x38(%rbp), %r12
ud2
jmp	0x5fd <w2c_needle_search+0x12d>
movq	$0x0, %rdi
movl	$0x1, %esi
movq	%r12, -0x38(%rbp)
movl	%r10d, %r12d
movl	%r13d, -0x2c(%rbp)
movl	%r11d, %r13d
movl	%r9d, %r15d
llq	0xa67 <w2c_needle_search+0x597>
movl	%r15d, %r9d
movl	%r13d, %r11d
movl	-0x2c(%rbp), %r13d
movl	%r12d, %r10d
movq	-0x38(%rbp), %r12
ud2
jmp	0x61f <w2c_needle_search+0x14f>
movq	$0x0, %rdi
movl	$0x1, %esi
movl	%r13d, -0x2c(%rbp)
movl	%r10d, %r13d
movl	%r11d, %ebx
movl	%r9d, %r15d
movq	%r12, -0x38(%rbp)
movl	%ecx, %r12d
llq	0xaa4 <w2c_needle_search+0x5d4>
movl	%r12d, %ecx
movq	-0x38(%rbp), %r12
movl	%r15d, %r9d
movl	%ebx, %r11d
movl	%r13d, %r10d
movl	-0x2c(%rbp), %r13d
ud2
jmp	0x641 <w2c_needle_search+0x171>
movq	$0x0, %rdi
movl	$0x1, %esi
movq	%r12, -0x38(%rbp)
movl	%r10d, %r12d
movl	%r13d, -0x2c(%rbp)
movl	%r11d, %r13d
movl	%r14d, -0x30(%rbp)
movl	%r9d, %r15d
movl	%ecx, %r14d
llq	0xae8 <w2c_needle_search+0x618>
movl	%r14d, %ecx
movl	%r15d, %r9d
movl	-0x30(%rbp), %r14d
movl	%r13d, %r11d
movl	-0x2c(%rbp), %r13d
movl	%r12d, %r10d
movq	-0x38(%rbp), %r12
ud2
jmp	0x660 <w2c_needle_search+0x190>
movq	$0x0, %rdi
movl	$0x1, %esi
movq	%r12, -0x38(%rbp)
movl	%r10d, %r12d
movl	%r13d, -0x2c(%rbp)
movl	%r11d, %r13d
movl	%r14d, -0x30(%rbp)
movl	%r9d, %r15d
movl	%ecx, %r14d
llq	0xb30 <w2c_needle_search+0x660>
movl	%r14d, %ecx
movl	%r15d, %r9d
movl	-0x30(%rbp), %r14d
movl	%r13d, %r11d
movl	-0x2c(%rbp), %r13d
movl	%r12d, %r10d
movq	-0x38(%rbp), %r12
ud2
jmp	0x67e <w2c_needle_search+0x1ae>
movq	$0x0, %rdi
movl	$0x1, %esi
movq	%r12, -0x38(%rbp)
movl	%r10d, %r12d
movl	%r13d, -0x2c(%rbp)
movl	%r11d, %r13d
movl	%r14d, -0x30(%rbp)
movl	%r9d, %r15d
movl	%ecx, %r14d
llq	0xb78 <w2c_needle_search+0x6a8>
movl	%r14d, %ecx
movl	%r15d, %r9d
movl	-0x30(%rbp), %r14d
movl	%r13d, %r11d
movl	-0x2c(%rbp), %r13d
movl	%r12d, %r10d
movq	-0x38(%rbp), %r12
ud2
jmp	0x69d <w2c_needle_search+0x1cd>
movq	$0x0, %rdi
movl	$0x1, %esi
movq	%r12, -0x38(%rbp)
movl	%r10d, %r12d
movl	%r13d, -0x2c(%rbp)
movl	%r11d, %r13d
movl	%r14d, -0x30(%rbp)
movl	%r9d, %r15d
movl	%ecx, %r14d
llq	0xbc0 <w2c_needle_search+0x6f0>
movl	%r14d, %ecx
movl	%r15d, %r9d
movl	-0x30(%rbp), %r14d
movl	%r13d, %r11d
movl	-0x2c(%rbp), %r13d
movl	%r12d, %r10d
movq	-0x38(%rbp), %r12
ud2
jmp	0x6bc <w2c_needle_search+0x1ec>
movq	$0x0, %rdi
movl	$0x1, %esi
movq	%r12, -0x38(%rbp)
movl	%r10d, %r12d
movl	%r13d, -0x2c(%rbp)
movl	%r11d, %r13d
movl	%r14d, -0x30(%rbp)
movl	%r9d, %r15d
movl	%ecx, %r14d
llq	0xc08 <w2c_needle_search+0x738>
movl	%r14d, %ecx
movl	%r15d, %r9d
movl	-0x30(%rbp), %r14d
movl	%r13d, %r11d
movl	-0x2c(%rbp), %r13d
movl	%r12d, %r10d
movq	-0x38(%rbp), %r12
ud2
jmp	0x6db <w2c_needle_search+0x20b>
movq	$0x0, %rdi
movl	$0x1, %esi
movq	%r12, -0x38(%rbp)
movl	%r10d, %r12d
movl	%r13d, -0x2c(%rbp)
movl	%r11d, %r13d
movl	%r14d, -0x30(%rbp)
movl	%r9d, %r15d
movl	%ecx, %r14d
llq	0xc50 <w2c_needle_search+0x780>
movl	%r14d, %ecx
movl	%r15d, %r9d
movl	-0x30(%rbp), %r14d
movl	%r13d, %r11d
movl	-0x2c(%rbp), %r13d
movl	%r12d, %r10d
movq	-0x38(%rbp), %r12
ud2
jmp	0x6fa <w2c_needle_search+0x22a>
movq	$0x0, %rdi
movl	$0x1, %esi
movq	%r12, -0x38(%rbp)
movl	%r10d, %r12d
movl	%r13d, -0x2c(%rbp)
movl	%r11d, %r13d
movl	%r14d, -0x30(%rbp)
movl	%r9d, %r15d
movl	%ecx, %r14d
llq	0xc98 <w2c_needle_search+0x7c8>
movl	%r14d, %ecx
movl	%r15d, %r9d
movl	-0x30(%rbp), %r14d
movl	%r13d, %r11d
movl	-0x2c(%rbp), %r13d
movl	%r12d, %r10d
movq	-0x38(%rbp), %r12
ud2
jmp	0x719 <w2c_needle_search+0x249>
movq	$0x0, %rdi
movl	$0x1, %esi
movq	%r12, -0x38(%rbp)
movl	%r10d, %r12d
movl	%r13d, -0x2c(%rbp)
movl	%r11d, %r13d
movl	%r14d, -0x30(%rbp)
movl	%r9d, %r15d
movl	%ecx, %r14d
llq	0xce0 <w2c_needle_search+0x810>
movl	%r14d, %ecx
movl	%r15d, %r9d
movl	-0x30(%rbp), %r14d
movl	%r13d, %r11d
movl	-0x2c(%rbp), %r13d
movl	%r12d, %r10d
movq	-0x38(%rbp), %r12
ud2
jmp	0x738 <w2c_needle_search+0x268>
movq	$0x0, %rdi
movl	$0x1, %esi
movq	%r12, -0x38(%rbp)
movl	%r10d, %r12d
movl	%r13d, -0x2c(%rbp)
movl	%r11d, %r13d
movl	%r14d, -0x30(%rbp)
movl	%r9d, %r15d
movl	%ecx, %r14d
llq	0xd28 <w2c_needle_search+0x858>
movl	%r14d, %ecx
movl	%r15d, %r9d
movl	-0x30(%rbp), %r14d
movl	%r13d, %r11d
movl	-0x2c(%rbp), %r13d
movl	%r12d, %r10d
movq	-0x38(%rbp), %r12
ud2
jmp	0x757 <w2c_needle_search+0x287>
movq	$0x0, %rdi
movl	$0x1, %esi
movq	%r12, -0x38(%rbp)
movl	%r10d, %r12d
movl	%r13d, -0x2c(%rbp)
movl	%r11d, %r13d
movl	%r14d, -0x30(%rbp)
movl	%r9d, %r15d
movl	%ecx, %r14d
llq	0xd70 <w2c_needle_search+0x8a0>
movl	%r14d, %ecx
movl	%r15d, %r9d
movl	-0x30(%rbp), %r14d
movl	%r13d, %r11d
movl	-0x2c(%rbp), %r13d
movl	%r12d, %r10d
movq	-0x38(%rbp), %r12
ud2
jmp	0x776 <w2c_needle_search+0x2a6>
nop

<__pfx_w2c_needle_0x5F_dso_handle>:
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop

<w2c_needle_0x5F_dso_handle>:
llq	0xda5 <w2c_needle_0x5F_dso_handle+0x5>
pushq	%rbp
movq	%rsp, %rbp
movq	%rdi, %rax
popq	%rbp
xorl	%edi, %edi
jmp	0xdb5 <w2c_needle_0x5F_dso_handle+0x15>
nopw	%cs:(%rax,%rax)

<__pfx_w2c_needle_0x5F_data_end>:
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop

<w2c_needle_0x5F_data_end>:
llq	0xdd5 <w2c_needle_0x5F_data_end+0x5>
pushq	%rbp
movq	%rsp, %rbp
leaq	0x4(%rdi), %rax
popq	%rbp
xorl	%edi, %edi
jmp	0xde6 <w2c_needle_0x5F_data_end+0x16>
nopw	%cs:(%rax,%rax)

<__pfx_w2c_needle_0x5F_stack_low>:
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop

<w2c_needle_0x5F_stack_low>:
llq	0xe05 <w2c_needle_0x5F_stack_low+0x5>
pushq	%rbp
movq	%rsp, %rbp
leaq	0x8(%rdi), %rax
popq	%rbp
xorl	%edi, %edi
jmp	0xe16 <w2c_needle_0x5F_stack_low+0x16>
nopw	%cs:(%rax,%rax)

<__pfx_w2c_needle_0x5F_stack_high>:
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop

<w2c_needle_0x5F_stack_high>:
llq	0xe35 <w2c_needle_0x5F_stack_high+0x5>
pushq	%rbp
movq	%rsp, %rbp
leaq	0xc(%rdi), %rax
popq	%rbp
xorl	%edi, %edi
jmp	0xe46 <w2c_needle_0x5F_stack_high+0x16>
nopw	%cs:(%rax,%rax)

<__pfx_w2c_needle_0x5F_global_base>:
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop

<w2c_needle_0x5F_global_base>:
llq	0xe65 <w2c_needle_0x5F_global_base+0x5>
pushq	%rbp
movq	%rsp, %rbp
leaq	0x10(%rdi), %rax
popq	%rbp
xorl	%edi, %edi
jmp	0xe76 <w2c_needle_0x5F_global_base+0x16>
nopw	%cs:(%rax,%rax)

<__pfx_w2c_needle_0x5F_heap_base>:
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop

<w2c_needle_0x5F_heap_base>:
llq	0xe95 <w2c_needle_0x5F_heap_base+0x5>
pushq	%rbp
movq	%rsp, %rbp
leaq	0x14(%rdi), %rax
popq	%rbp
xorl	%edi, %edi
jmp	0xea6 <w2c_needle_0x5F_heap_base+0x16>
nopw	%cs:(%rax,%rax)

<__pfx_w2c_needle_0x5F_heap_end>:
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop

<w2c_needle_0x5F_heap_end>:
llq	0xec5 <w2c_needle_0x5F_heap_end+0x5>
pushq	%rbp
movq	%rsp, %rbp
leaq	0x18(%rdi), %rax
popq	%rbp
xorl	%edi, %edi
jmp	0xed6 <w2c_needle_0x5F_heap_end+0x16>
nopw	%cs:(%rax,%rax)

<__pfx_w2c_needle_0x5F_memory_base>:
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop

<w2c_needle_0x5F_memory_base>:
llq	0xef5 <w2c_needle_0x5F_memory_base+0x5>
pushq	%rbp
movq	%rsp, %rbp
leaq	0x1c(%rdi), %rax
popq	%rbp
xorl	%edi, %edi
jmp	0xf06 <w2c_needle_0x5F_memory_base+0x16>
nopw	%cs:(%rax,%rax)

<__pfx_w2c_needle_0x5F_table_base>:
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop

<w2c_needle_0x5F_table_base>:
llq	0xf25 <w2c_needle_0x5F_table_base+0x5>
pushq	%rbp
movq	%rsp, %rbp
leaq	0x20(%rdi), %rax
popq	%rbp
xorl	%edi, %edi
jmp	0xf36 <w2c_needle_0x5F_table_base+0x16>
nopw	%cs:(%rax,%rax)

<__pfx_wasm2c_needle_instantiate>:
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop

<wasm2c_needle_instantiate>:
llq	0xf55 <wasm2c_needle_instantiate+0x5>
pushq	%rbp
movq	%rsp, %rbp
pushq	%rbx
movq	%rdi, %rbx
movabsq	$0x40000000400, %rax    # imm = 0x40000000400
movq	%rax, (%rdi)
movabsq	$0x1040000000400, %rax  # imm = 0x1040000000400
movq	%rax, 0x8(%rdi)
movq	%rax, 0x10(%rdi)
movq	$0x20000, 0x18(%rdi)    # imm = 0x20000
movl	$0x1, 0x20(%rdi)
movq	$0x0, 0x38(%rdi)
movq	$0x0, 0x28(%rdi)
movq	$0x0, 0x30(%rdi)
movq	$0x0, 0x58(%rdi)
movl	$0x10000, 0x38(%rdi)    # imm = 0x10000
movq	$0x2, 0x40(%rdi)
movq	$0x10000, 0x48(%rdi)    # imm = 0x10000
movq	$0x20000, 0x50(%rdi)    # imm = 0x20000
movl	$0x20000, %edi          # imm = 0x20000
movl	$0xdc0, %esi            # imm = 0xDC0
llq	0xfd9 <wasm2c_needle_instantiate+0x89>
movq	%rax, 0x28(%rbx)
testq	%rax, %rax
je	0xffa <wasm2c_needle_instantiate+0xaa>
q	$0x20000, %rax          # imm = 0x20000
movq	%rax, 0x30(%rbx)
popq	%rbx
popq	%rbp
xorl	%eax, %eax
xorl	%edi, %edi
xorl	%esi, %esi
jmp	0xffa <wasm2c_needle_instantiate+0xaa>
movl	$0x20000, %esi          # imm = 0x20000
movq	$0x0, %rdi
llq	0x100b <wasm2c_needle_instantiate+0xbb>
movq	$0x0, 0x40(%rbx)
movq	$0x0, 0x50(%rbx)
xorl	%eax, %eax
jmp	0xfe8 <wasm2c_needle_instantiate+0x98>
nop

<__pfx_wasm2c_needle_free>:
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop

<wasm2c_needle_free>:
llq	0x1035 <wasm2c_needle_free+0x5>
pushq	%rbp
movq	%rsp, %rbp
pushq	%rbx
movq	%rdi, %rbx
movq	0x28(%rdi), %rdi
testq	%rdi, %rdi
je	0x1053 <wasm2c_needle_free+0x23>
llq	0x104b <wasm2c_needle_free+0x1b>
movq	$0x0, 0x28(%rbx)
movq	$0x0, 0x30(%rbx)
movl	$0x0, 0x38(%rbx)
movq	$0x0, 0x40(%rbx)
movq	$0x0, 0x48(%rbx)
movq	$0x0, 0x50(%rbx)
movb	$0x0, 0x58(%rbx)
popq	%rbx
popq	%rbp
xorl	%edi, %edi
jmp	0x1088 <wasm2c_needle_free+0x58>
nopl	(%rax,%rax)

<__pfx_wasm_rt_free_memory>:
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop

<wasm_rt_free_memory>:
llq	0x10a5 <wasm_rt_free_memory+0x5>
testq	%rdi, %rdi
je	0x10f3 <wasm_rt_free_memory+0x53>
pushq	%rbp
movq	%rsp, %rbp
pushq	%rbx
movq	%rdi, %rbx
movq	(%rdi), %rdi
testq	%rdi, %rdi
je	0x10c6 <wasm_rt_free_memory+0x26>
llq	0x10bf <wasm_rt_free_memory+0x1f>
movq	$0x0, (%rbx)
movq	$0x0, 0x8(%rbx)
movl	$0x0, 0x10(%rbx)
movq	$0x0, 0x18(%rbx)
movq	$0x0, 0x20(%rbx)
movq	$0x0, 0x28(%rbx)
movb	$0x0, 0x30(%rbx)
popq	%rbx
popq	%rbp
xorl	%edi, %edi
jmp	0x10fb <wasm_rt_free_memory+0x5b>
nopl	(%rax,%rax)

<__pfx_wasm2c_needle_get_func_type>:
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop

<wasm2c_needle_get_func_type>:
llq	0x1115 <wasm2c_needle_get_func_type+0x5>
pushq	%rbp
movq	%rsp, %rbp
ndq	$-0x10, %rsp
subq	$0x50, %rsp
movq	%rdx, 0x30(%rsp)
movq	%rcx, 0x38(%rsp)
movq	%r8, 0x40(%rsp)
movq	%r9, 0x48(%rsp)
movl	%esi, %eax
orl	%edi, %eax
je	0x119c <wasm2c_needle_get_func_type+0x8c>
movq	$0x0, 0x10(%rsp)
movq	$0x0, 0x8(%rsp)
movq	$0x0, (%rsp)
xorl	$0x1, %edi
movl	%edi, %eax
orl	%esi, %eax
jne	0x11a8 <wasm2c_needle_get_func_type+0x98>
leaq	0x20(%rsp), %rax
movq	%rax, 0x10(%rsp)
leaq	0x10(%rbp), %rax
movq	%rax, 0x8(%rsp)
movabsq	$0x3000000010, %rax     # imm = 0x3000000010
movq	%rax, (%rsp)
movl	$0x10, %eax
mpq	$0x28, %rax
ja	0x11f6 <wasm2c_needle_get_func_type+0xe6>
movl	$0x10, %ecx
q	0x10(%rsp), %rcx
l	$0x8, %eax
movl	%eax, (%rsp)
jmp	0x1204 <wasm2c_needle_get_func_type+0xf4>
movq	$0x0, %rax
jmp	0x1242 <wasm2c_needle_get_func_type+0x132>
xorl	$0x1, %esi
orl	%esi, %edi
jne	0x1240 <wasm2c_needle_get_func_type+0x130>
leaq	0x20(%rsp), %rax
movq	%rax, 0x10(%rsp)
leaq	0x10(%rbp), %rax
movq	%rax, 0x8(%rsp)
movabsq	$0x3000000010, %rax     # imm = 0x3000000010
movq	%rax, (%rsp)
movl	$0x10, %eax
movl	$0x10, %ecx
mpq	$0x28, %rcx
ja	0x1216 <wasm2c_needle_get_func_type+0x106>
q	0x10(%rsp), %rcx
l	$0x8, %eax
movl	%eax, (%rsp)
mpl	$0x0, (%rcx)
jne	0x1240 <wasm2c_needle_get_func_type+0x130>
jmp	0x1229 <wasm2c_needle_get_func_type+0x119>
movq	0x8(%rsp), %rcx
leaq	0x8(%rcx), %rax
movq	%rax, 0x8(%rsp)
xorl	%eax, %eax
mpl	$0x0, (%rcx)
movq	$0x0, %rcx
moveq	%rcx, %rax
jmp	0x1242 <wasm2c_needle_get_func_type+0x132>
movq	0x8(%rsp), %rcx
leaq	0x8(%rcx), %rdx
movq	%rdx, 0x8(%rsp)
mpl	$0x0, (%rcx)
jne	0x1240 <wasm2c_needle_get_func_type+0x130>
mpl	$0x28, %eax
ja	0x125a <wasm2c_needle_get_func_type+0x14a>
movl	%eax, %ecx
q	0x10(%rsp), %rcx
l	$0x8, %eax
movl	%eax, (%rsp)
mpl	$0x0, (%rcx)
je	0x126d <wasm2c_needle_get_func_type+0x15d>
xorl	%eax, %eax
movq	%rbp, %rsp
popq	%rbp
xorl	%ecx, %ecx
xorl	%edi, %edi
xorl	%edx, %edx
xorl	%esi, %esi
xorl	%r8d, %r8d
xorl	%r9d, %r9d
jmp	0x125a <wasm2c_needle_get_func_type+0x14a>
movq	0x8(%rsp), %rcx
leaq	0x8(%rcx), %rax
movq	%rax, 0x8(%rsp)
mpl	$0x0, (%rcx)
jne	0x1240 <wasm2c_needle_get_func_type+0x130>
movq	$0x0, %rax
jmp	0x1242 <wasm2c_needle_get_func_type+0x132>
nopw	%cs:(%rax,%rax)

<__pfx_wasm_rt_set_fuel>:
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop

<wasm_rt_set_fuel>:
llq	0x1295 <wasm_rt_set_fuel+0x5>
pushq	%rbp
movq	%rsp, %rbp
movq	%rdi, (%rip)            # 0x12a0 <wasm_rt_set_fuel+0x10>
popq	%rbp
xorl	%edi, %edi
jmp	0x12a9 <wasm_rt_set_fuel+0x19>
nopl	(%rax)

<__pfx_wasm_rt_get_fuel>:
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop

<wasm_rt_get_fuel>:
llq	0x12c5 <wasm_rt_get_fuel+0x5>
pushq	%rbp
movq	%rsp, %rbp
movq	(%rip), %rax            # 0x12d0 <wasm_rt_get_fuel+0x10>
popq	%rbp
jmp	0x12d7 <wasm_rt_get_fuel+0x17>
nopw	(%rax,%rax)

<__pfx_wasm_rt_consume_fuel>:
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop

<wasm_rt_consume_fuel>:
llq	0x12f5 <wasm_rt_consume_fuel+0x5>
movq	(%rip), %rax            # 0x12fc <wasm_rt_consume_fuel+0xc>
subq	%rdi, %rax
jb	0x1314 <wasm_rt_consume_fuel+0x24>
movq	%rax, (%rip)            # 0x1308 <wasm_rt_consume_fuel+0x18>
xorl	%eax, %eax
xorl	%edi, %edi
xorl	%esi, %esi
jmp	0x1314 <wasm_rt_consume_fuel+0x24>
pushq	%rbp
movq	%rsp, %rbp
movq	$0x0, %rdi
movl	$0xb, %esi
llq	0x1329 <wasm_rt_consume_fuel+0x39>
ud2
popq	%rbp
xorl	%eax, %eax
xorl	%edi, %edi
xorl	%esi, %esi
jmp	0x1338 <wasm_rt_consume_fuel+0x48>
nopl	(%rax,%rax)

<__pfx_wasm_rt_allocate_memory>:
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop

<wasm_rt_allocate_memory>:
llq	0x1355 <wasm_rt_allocate_memory+0x5>
pushq	%rbp
movq	%rsp, %rbp
pushq	%r14
pushq	%rbx
movq	%rdi, %rbx
movl	%esi, %eax
movl	%r8d, %r14d
imulq	%rax, %r14
movq	$0x0, 0x10(%rdi)
movq	$0x0, 0x30(%rdi)
movq	$0x0, 0x8(%rdi)
movq	$0x0, (%rdi)
movl	%r8d, 0x10(%rdi)
movq	%rax, 0x18(%rdi)
movl	%edx, %eax
movq	%rax, 0x20(%rdi)
movb	%cl, 0x30(%rdi)
movq	%r14, 0x28(%rdi)
testq	%r14, %r14
je	0x13bf <wasm_rt_allocate_memory+0x6f>
movq	%r14, %rdi
movl	$0xdc0, %esi            # imm = 0xDC0
llq	0x13ae <wasm_rt_allocate_memory+0x5e>
movq	%rax, (%rbx)
testq	%rax, %rax
je	0x13e5 <wasm_rt_allocate_memory+0x95>
q	%r14, %rax
movq	%rax, 0x8(%rbx)
jmp	0x13ce <wasm_rt_allocate_memory+0x7e>
movq	$0x0, 0x8(%rbx)
movq	$0x0, (%rbx)
popq	%rbx
popq	%r14
popq	%rbp
xorl	%eax, %eax
xorl	%ecx, %ecx
xorl	%edi, %edi
xorl	%edx, %edx
xorl	%esi, %esi
xorl	%r8d, %r8d
jmp	0x13e5 <wasm_rt_allocate_memory+0x95>
movq	$0x0, %rdi
movq	%r14, %rsi
llq	0x13f4 <wasm_rt_allocate_memory+0xa4>
movq	$0x0, 0x18(%rbx)
movq	$0x0, 0x28(%rbx)
movq	$0x0, 0x8(%rbx)
jmp	0x13ce <wasm_rt_allocate_memory+0x7e>
nop

<__pfx_wasm_rt_allocate_funcref_table>:
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop

<wasm_rt_allocate_funcref_table>:
llq	0x1425 <wasm_rt_allocate_funcref_table+0x5>
testq	%rdi, %rdi
je	0x147b <wasm_rt_allocate_funcref_table+0x5b>
pushq	%rbp
movq	%rsp, %rbp
pushq	%r15
pushq	%r14
pushq	%r12
pushq	%rbx
movl	%esi, %r14d
movq	%rdi, %rbx
movq	$0x0, (%rdi)
movl	$0x0, 0xc(%rdi)
movl	%edx, 0x8(%rdi)
testl	%esi, %esi
je	0x1473 <wasm_rt_allocate_funcref_table+0x53>
movl	%edx, %r12d
movl	%r14d, %r15d
shlq	$0x5, %r15
movq	%r15, %rdi
movl	$0xdc0, %esi            # imm = 0xDC0
llq	0x1467 <wasm_rt_allocate_funcref_table+0x47>
movq	%rax, (%rbx)
testq	%rax, %rax
je	0x1489 <wasm_rt_allocate_funcref_table+0x69>
movl	%r14d, 0xc(%rbx)
popq	%rbx
popq	%r12
popq	%r14
popq	%r15
popq	%rbp
xorl	%eax, %eax
xorl	%edi, %edi
xorl	%edx, %edx
xorl	%esi, %esi
jmp	0x1489 <wasm_rt_allocate_funcref_table+0x69>
movq	$0x0, %rdi
movq	%r15, %rsi
llq	0x1498 <wasm_rt_allocate_funcref_table+0x78>
movl	$0x0, 0xc(%rbx)
movl	%r12d, 0x8(%rbx)
jmp	0x1473 <wasm_rt_allocate_funcref_table+0x53>
nopw	%cs:(%rax,%rax)

<__pfx_wasm_rt_free_funcref_table>:
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop

<wasm_rt_free_funcref_table>:
llq	0x14c5 <wasm_rt_free_funcref_table+0x5>
testq	%rdi, %rdi
je	0x14f0 <wasm_rt_free_funcref_table+0x30>
pushq	%rbp
movq	%rsp, %rbp
pushq	%rbx
movq	%rdi, %rbx
movq	(%rdi), %rdi
testq	%rdi, %rdi
je	0x14e6 <wasm_rt_free_funcref_table+0x26>
llq	0x14df <wasm_rt_free_funcref_table+0x1f>
movq	$0x0, (%rbx)
movq	$0x0, 0x8(%rbx)
popq	%rbx
popq	%rbp
xorl	%edi, %edi
jmp	0x14f8 <wasm_rt_free_funcref_table+0x38>
nopl	(%rax,%rax)

<__pfx_benchmark_search>:
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop

<benchmark_search>:
llq	0x1515 <benchmark_search+0x5>
pushq	%rbp
movq	%rsp, %rbp
pushq	%r15
pushq	%r14
pushq	%r12
pushq	%rbx
ndq	$-0x10, %rsp
subq	$0x1c0, %rsp            # imm = 0x1C0
movl	(%rip), %ebx            # 0x1531 <benchmark_search+0x21>
movq	$0xf4240, (%rip) # imm = 0xF4240
# 0x153c <benchmark_search+0x2c>
movq	$0x0, %rdi
movl	%ebx, %esi
llq	0x154a <benchmark_search+0x3a>
movq	%rsp, %rdi
xorl	%r12d, %r12d
movl	$0x1b8, %edx            # imm = 0x1B8
xorl	%esi, %esi
llq	0x155c <benchmark_search+0x4c>
movq	$0xf4240, (%rip) # imm = 0xF4240
# 0x1567 <benchmark_search+0x57>
llq	0x156c <benchmark_search+0x5c>
movq	%rax, %r15
movq	$0x0, %rdi
movl	%ebx, %esi
llq	0x157d <benchmark_search+0x6d>
movl	%eax, %r14d
llq	0x1585 <benchmark_search+0x75>
subl	%r15d, %eax
movl	%eax, (%rsp,%r12,4)
incq	%r12
mpq	$0x6e, %r12
jne	0x155c <benchmark_search+0x4c>
xorl	%ebx, %ebx
movl	(%rsp,%rbx,4), %esi
movq	$0x0, %rdi
llq	0x15a6 <benchmark_search+0x96>
incq	%rbx
mpq	$0x6e, %rbx
jne	0x1597 <benchmark_search+0x87>
movq	$0x0, %rdi
movl	%r14d, %esi
llq	0x15be <benchmark_search+0xae>
xorl	%eax, %eax
leaq	-0x20(%rbp), %rsp
popq	%rbx
popq	%r12
popq	%r14
popq	%r15
popq	%rbp
xorl	%edi, %edi
xorl	%edx, %edx
xorl	%esi, %esi
jmp	0x15d8 <benchmark_search+0xc8>

isassembly of section .text.unlikely.:

<__pfx_wasm_rt_init>:
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop

<wasm_rt_init>:
llq	0x15 <wasm_rt_init+0x5>
pushq	%rbp
movq	%rsp, %rbp
movq	$0x0, %rdi
llq	0x25 <wasm_rt_init+0x15>
popq	%rbp
xorl	%edi, %edi
jmp	0x2e <wasm_rt_init+0x1e>
nop

<__pfx_wasm_rt_free>:
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop

<wasm_rt_free>:
llq	0x45 <wasm_rt_free+0x5>
pushq	%rbp
movq	%rsp, %rbp
movq	$0x0, %rdi
llq	0x55 <wasm_rt_free+0x15>
popq	%rbp
xorl	%edi, %edi
jmp	0x5e <wasm_rt_free+0x1e>
nop

<__pfx_wasm_rt_trap>:
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop

<wasm_rt_trap>:
llq	0x75 <wasm_rt_trap+0x5>
pushq	%rbp
movq	%rsp, %rbp
movl	%edi, %esi
movq	$0x0, %rdi
llq	0x87 <wasm_rt_trap+0x17>
ud2
popq	%rbp
xorl	%edi, %edi
xorl	%esi, %esi
jmp	0x94 <wasm_rt_trap+0x24>

isassembly of section .init.text:

<__pfx_init_module>:
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop

<init_module>:
llq	0x15 <init_module+0x5>
pushq	%rbp
movq	%rsp, %rbp
pushq	%rbx
xorl	%ebx, %ebx
movq	$0x0, %rdi
movl	$0x1b6, %esi            # imm = 0x1B6
xorl	%edx, %edx
movq	$0x0, %rcx
llq	0x36 <init_module+0x26>
movq	%rax, (%rip)            # 0x3d <init_module+0x2d>
movq	$0x0, %rdi
llq	0x49 <init_module+0x39>
movq	$0x0, %rdi
llq	0x55 <init_module+0x45>
movq	$0x0, %rdi
llq	0x61 <init_module+0x51>
mpq	$0x0, (%rip)            # 0x69 <init_module+0x59>
movl	$0xfffffff4, %eax       # imm = 0xFFFFFFF4
movnel	%ebx, %eax
popq	%rbx
popq	%rbp
xorl	%ecx, %ecx
xorl	%edi, %edi
xorl	%edx, %edx
xorl	%esi, %esi
jmp	0x81 <init_module+0x71>

isassembly of section .exit.text:

<__pfx_cleanup_module>:
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop

<cleanup_module>:
pushq	%rbp
movq	%rsp, %rbp
movq	(%rip), %rdi            # 0x1b <cleanup_module+0xb>
llq	0x20 <cleanup_module+0x10>
movq	(%rip), %rdi            # 0x27 <cleanup_module+0x17>
testq	%rdi, %rdi
je	0x3c <cleanup_module+0x2c>
llq	0x31 <cleanup_module+0x21>
movq	$0x0, (%rip)    # 0x3c <cleanup_module+0x2c>
xorl	%eax, %eax
movq	%rax, (%rip)            # 0x45 <cleanup_module+0x35>
movl	$0x0, (%rip)            # 0x4f <cleanup_module+0x3f>
movq	%rax, (%rip)            # 0x56 <cleanup_module+0x46>
movq	%rax, (%rip)            # 0x5d <cleanup_module+0x4d>
movq	%rax, (%rip)            # 0x64 <cleanup_module+0x54>
movb	$0x0, (%rip)            # 0x6b <cleanup_module+0x5b>
movq	$0x0, %rdi
llq	0x77 <cleanup_module+0x67>
movq	$0x0, %rdi
llq	0x83 <cleanup_module+0x73>
popq	%rbp
xorl	%eax, %eax
xorl	%edi, %edi
jmp	0x8e <cleanup_module+0x7e>
