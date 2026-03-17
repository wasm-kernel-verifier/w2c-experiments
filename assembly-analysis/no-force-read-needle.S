
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
je	0x87e <w2c_needle_search+0x3ae>
q	%rax
movq	%rax, (%rip)            # 0x507 <w2c_needle_search+0x37>
mpl	$0x0, -0x44(%rbp)
je	0x89b <w2c_needle_search+0x3cb>
movl	-0x44(%rbp), %r13d
leaq	0x4e28(%r13), %rax
movq	-0x40(%rbp), %rcx
movq	0x50(%rcx), %rcx
mpq	%rcx, %rax
ja	0x8c5 <w2c_needle_search+0x3f5>
movq	-0x40(%rbp), %rax
movq	0x28(%rax), %rax
movl	0x4e24(%rax,%r13), %r15d
leaq	0x4e2c(%r13), %rdx
mpq	%rcx, %rdx
ja	0x8e5 <w2c_needle_search+0x415>
movl	0x4e28(%rax,%r13), %edx
movl	%edx, -0x58(%rbp)
leaq	0x4e30(%r13), %rdx
mpq	%rcx, %rdx
ja	0x909 <w2c_needle_search+0x439>
movl	0x4e2c(%rax,%r13), %edx
movl	%edx, -0x54(%rbp)
leaq	0x4e34(%r13), %rdx
mpq	%rcx, %rdx
ja	0x92d <w2c_needle_search+0x45d>
movl	0x4e30(%rax,%r13), %r8d
leaq	0x4e38(%r13), %rdx
mpq	%rcx, %rdx
ja	0x964 <w2c_needle_search+0x494>
movl	0x4e34(%rax,%r13), %r9d
leaq	0x4e3c(%r13), %rdx
mpq	%rcx, %rdx
ja	0x9a1 <w2c_needle_search+0x4d1>
movl	0x4e38(%rax,%r13), %r10d
leaq	0x4e40(%r13), %rdx
mpq	%rcx, %rdx
ja	0x9ea <w2c_needle_search+0x51a>
movl	0x4e3c(%rax,%r13), %edx
movl	%edx, -0x50(%rbp)
leaq	0x4e44(%r13), %rdx
mpq	%rcx, %rdx
ja	0xa28 <w2c_needle_search+0x558>
movl	0x4e40(%rax,%r13), %r11d
leaq	0x4e48(%r13), %rdx
mpq	%rcx, %rdx
ja	0xa79 <w2c_needle_search+0x5a9>
movl	0x4e44(%rax,%r13), %ebx
leaq	0x4(%r13), %rdx
mpq	%rcx, %rdx
ja	0xacd <w2c_needle_search+0x5fd>
movl	(%rax,%r13), %edx
movl	%edx, -0x80(%rbp)
leaq	0x8(%r13), %rdx
mpq	%rcx, %rdx
ja	0xb19 <w2c_needle_search+0x649>
movl	0x4(%rax,%r13), %edx
movl	%edx, -0x7c(%rbp)
leaq	0xc(%r13), %rdx
mpq	%rcx, %rdx
ja	0xb65 <w2c_needle_search+0x695>
movl	0x8(%rax,%r13), %edx
movl	%edx, -0x78(%rbp)
leaq	0x10(%r13), %rdx
mpq	%rcx, %rdx
ja	0xbb1 <w2c_needle_search+0x6e1>
movl	0xc(%rax,%r13), %edx
movl	%edx, -0x74(%rbp)
leaq	0x14(%r13), %rdx
mpq	%rcx, %rdx
ja	0xbfd <w2c_needle_search+0x72d>
movl	0x10(%rax,%r13), %edx
movl	%edx, -0x70(%rbp)
leaq	0x18(%r13), %rdx
mpq	%rcx, %rdx
ja	0xc49 <w2c_needle_search+0x779>
movl	0x14(%rax,%r13), %edx
movl	%edx, -0x6c(%rbp)
leaq	0x1c(%r13), %rdx
mpq	%rcx, %rdx
ja	0xc95 <w2c_needle_search+0x7c5>
movl	0x18(%rax,%r13), %edx
movl	%edx, -0x68(%rbp)
leaq	0x20(%r13), %rdx
mpq	%rcx, %rdx
ja	0xce1 <w2c_needle_search+0x811>
movl	0x1c(%rax,%r13), %edx
movl	%edx, -0x64(%rbp)
leaq	0x24(%r13), %rdx
mpq	%rcx, %rdx
ja	0xd2d <w2c_needle_search+0x85d>
movl	0x20(%rax,%r13), %edx
movl	%edx, -0x60(%rbp)
leaq	0x28(%r13), %rdx
mpq	%rcx, %rdx
ja	0xd79 <w2c_needle_search+0x8a9>
l	$0x4e20, -0x44(%rbp)    # imm = 0x4E20
movl	0x24(%rax,%r13), %eax
movl	%eax, -0x38(%rbp)
movl	$0x1, %eax
movl	$0x1388, %r12d          # imm = 0x1388
movl	-0x50(%rbp), %r13d
movl	%r11d, -0x50(%rbp)
movl	%r9d, %r11d
movl	%r8d, %r9d
movl	-0x54(%rbp), %r8d
movl	-0x58(%rbp), %ecx
movl	%ecx, -0x54(%rbp)
movl	%r15d, -0x58(%rbp)
movq	(%rip), %rcx            # 0x70c <w2c_needle_search+0x23c>
testq	%rcx, %rcx
je	0x808 <w2c_needle_search+0x338>
q	%rcx
movq	%rcx, (%rip)            # 0x71f <w2c_needle_search+0x24f>
movl	-0x44(%rbp), %r14d
leaq	0x4(%r14), %rcx
movq	-0x40(%rbp), %rdx
mpq	0x50(%rdx), %rcx
ja	0x842 <w2c_needle_search+0x372>
movq	-0x40(%rbp), %rcx
movq	0x28(%rcx), %rcx
movl	(%rcx,%r14), %r15d
movl	-0x54(%rbp), %ecx
subl	-0x78(%rbp), %ecx
movl	%r8d, %edx
subl	-0x74(%rbp), %edx
orl	%ecx, %edx
movl	%r9d, %ecx
subl	-0x70(%rbp), %ecx
movl	%r8d, %r14d
movl	%r11d, %r8d
subl	-0x6c(%rbp), %r8d
orl	%ecx, %r8d
movl	%r10d, %ecx
subl	-0x68(%rbp), %ecx
orl	%r8d, %ecx
movl	%r13d, %r8d
subl	-0x64(%rbp), %r8d
movl	%r13d, %esi
movl	%r10d, %r13d
movl	%r11d, %r10d
movl	%r9d, %r11d
movl	-0x50(%rbp), %edi
movl	%edi, %r9d
subl	-0x60(%rbp), %r9d
orl	%r8d, %r9d
movl	-0x58(%rbp), %r8d
subl	-0x7c(%rbp), %r8d
subl	-0x38(%rbp), %ebx
orl	%r8d, %ebx
movl	%r14d, %r8d
orl	%edx, %ebx
orl	%ecx, %ebx
movl	%r15d, %ecx
subl	-0x80(%rbp), %ecx
orl	%r9d, %ebx
movl	%r11d, %r9d
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
movl	%esi, %r11d
mpl	$0x9, %r12d
ja	0x6ed <w2c_needle_search+0x21d>
jmp	0x89d <w2c_needle_search+0x3cd>
movq	$0x0, %rdi
movl	$0xb, %esi
movl	%eax, -0x2c(%rbp)
movl	%r8d, %r14d
movl	%r9d, -0x4c(%rbp)
movl	%r11d, -0x48(%rbp)
movl	%r10d, %r15d
llq	0x82a <w2c_needle_search+0x35a>
movl	%r15d, %r10d
movl	-0x48(%rbp), %r11d
movl	-0x4c(%rbp), %r9d
movl	%r14d, %r8d
movl	-0x2c(%rbp), %eax
ud2
jmp	0x71f <w2c_needle_search+0x24f>
movq	$0x0, %rdi
movl	$0x1, %esi
movl	%eax, -0x2c(%rbp)
movl	%r8d, -0x5c(%rbp)
movl	%r9d, -0x4c(%rbp)
movl	%r11d, -0x48(%rbp)
movl	%r10d, %r15d
llq	0x865 <w2c_needle_search+0x395>
movl	%r15d, %r10d
movl	-0x48(%rbp), %r11d
movl	-0x4c(%rbp), %r9d
movl	-0x5c(%rbp), %r8d
movl	-0x2c(%rbp), %eax
ud2
jmp	0x735 <w2c_needle_search+0x265>
movq	$0x0, %rdi
movl	$0xb, %esi
llq	0x88f <w2c_needle_search+0x3bf>
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
jmp	0x8c5 <w2c_needle_search+0x3f5>
movq	$0x0, %rdi
movl	$0x1, %esi
llq	0x8d6 <w2c_needle_search+0x406>
movq	-0x40(%rbp), %rax
ud2
movq	0x50(%rax), %rcx
jmp	0x52d <w2c_needle_search+0x5d>
movq	$0x0, %rdi
movl	$0x1, %esi
llq	0x8f6 <w2c_needle_search+0x426>
movq	-0x40(%rbp), %rcx
ud2
movq	0x28(%rcx), %rax
movq	0x50(%rcx), %rcx
jmp	0x54d <w2c_needle_search+0x7d>
movq	$0x0, %rdi
movl	$0x1, %esi
llq	0x91a <w2c_needle_search+0x44a>
movq	-0x40(%rbp), %rcx
ud2
movq	0x28(%rcx), %rax
movq	0x50(%rcx), %rcx
jmp	0x568 <w2c_needle_search+0x98>
movq	$0x0, %rdi
movl	$0x1, %esi
llq	0x93e <w2c_needle_search+0x46e>
movq	-0x40(%rbp), %rcx
ud2
movq	0x28(%rcx), %rax
movq	0x50(%rcx), %rcx
movl	0x4e30(%rax,%r13), %r8d
leaq	0x4e38(%r13), %rdx
mpq	%rcx, %rdx
jbe	0x59b <w2c_needle_search+0xcb>
movq	$0x0, %rdi
movl	$0x1, %esi
movl	%r8d, %r12d
llq	0x978 <w2c_needle_search+0x4a8>
movl	%r12d, %r8d
movq	-0x40(%rbp), %rcx
ud2
movq	0x28(%rcx), %rax
movq	0x50(%rcx), %rcx
movl	0x4e34(%rax,%r13), %r9d
leaq	0x4e3c(%r13), %rdx
mpq	%rcx, %rdx
jbe	0x5b3 <w2c_needle_search+0xe3>
movq	$0x0, %rdi
movl	$0x1, %esi
movl	%r8d, %r12d
movq	%r13, %rbx
movl	%r9d, %r13d
llq	0x9bb <w2c_needle_search+0x4eb>
movl	%r13d, %r9d
movq	%rbx, %r13
movl	%r12d, %r8d
movq	-0x40(%rbp), %rcx
ud2
movq	0x28(%rcx), %rax
movq	0x50(%rcx), %rcx
movl	0x4e38(%rax,%r13), %r10d
leaq	0x4e40(%r13), %rdx
mpq	%rcx, %rdx
jbe	0x5cb <w2c_needle_search+0xfb>
movq	$0x0, %rdi
movl	$0x1, %esi
movl	%r8d, %r12d
movq	%r13, -0x38(%rbp)
movl	%r9d, %r13d
movl	%r10d, %r14d
llq	0xa08 <w2c_needle_search+0x538>
movl	%r14d, %r10d
movl	%r13d, %r9d
movq	-0x38(%rbp), %r13
movl	%r12d, %r8d
movq	-0x40(%rbp), %rcx
ud2
movq	0x28(%rcx), %rax
movq	0x50(%rcx), %rcx
jmp	0x5cb <w2c_needle_search+0xfb>
movq	$0x0, %rdi
movl	$0x1, %esi
movl	%r8d, %r12d
movq	%r13, -0x38(%rbp)
movl	%r9d, %r13d
movl	%r10d, %r14d
llq	0xa46 <w2c_needle_search+0x576>
movl	%r14d, %r10d
movl	%r13d, %r9d
movq	-0x38(%rbp), %r13
movl	%r12d, %r8d
movq	-0x40(%rbp), %rcx
ud2
movq	0x28(%rcx), %rax
movq	0x50(%rcx), %rcx
movl	0x4e40(%rax,%r13), %r11d
leaq	0x4e48(%r13), %rdx
mpq	%rcx, %rdx
jbe	0x5fe <w2c_needle_search+0x12e>
movq	$0x0, %rdi
movl	$0x1, %esi
movq	%r13, -0x38(%rbp)
movl	%r8d, %r13d
movl	%r9d, %ebx
movl	%r10d, %r14d
movl	%r11d, %r12d
llq	0xa9a <w2c_needle_search+0x5ca>
movl	%r12d, %r11d
movl	%r14d, %r10d
movl	%ebx, %r9d
movl	%r13d, %r8d
movq	-0x38(%rbp), %r13
movq	-0x40(%rbp), %rcx
ud2
movq	0x28(%rcx), %rax
movq	0x50(%rcx), %rcx
movl	0x4e44(%rax,%r13), %ebx
leaq	0x4(%r13), %rdx
mpq	%rcx, %rdx
jbe	0x613 <w2c_needle_search+0x143>
movq	$0x0, %rdi
movl	$0x1, %esi
movl	%r8d, %r12d
movq	%r13, -0x38(%rbp)
movl	%r9d, %r13d
movl	%r15d, -0x2c(%rbp)
movl	%r10d, %r14d
movl	%r11d, %r15d
llq	0xaf2 <w2c_needle_search+0x622>
movl	%r15d, %r11d
movl	%r14d, %r10d
movl	-0x2c(%rbp), %r15d
movl	%r13d, %r9d
movq	-0x38(%rbp), %r13
movl	%r12d, %r8d
movq	-0x40(%rbp), %rcx
ud2
movq	0x28(%rcx), %rax
movq	0x50(%rcx), %rcx
jmp	0x613 <w2c_needle_search+0x143>
movq	$0x0, %rdi
movl	$0x1, %esi
movl	%r8d, %r12d
movq	%r13, -0x38(%rbp)
movl	%r9d, %r13d
movl	%r15d, -0x2c(%rbp)
movl	%r10d, %r14d
movl	%r11d, %r15d
llq	0xb3e <w2c_needle_search+0x66e>
movl	%r15d, %r11d
movl	%r14d, %r10d
movl	-0x2c(%rbp), %r15d
movl	%r13d, %r9d
movq	-0x38(%rbp), %r13
movl	%r12d, %r8d
movq	-0x40(%rbp), %rcx
ud2
movq	0x28(%rcx), %rax
movq	0x50(%rcx), %rcx
jmp	0x627 <w2c_needle_search+0x157>
movq	$0x0, %rdi
movl	$0x1, %esi
movl	%r8d, %r12d
movq	%r13, -0x38(%rbp)
movl	%r9d, %r13d
movl	%r15d, -0x2c(%rbp)
movl	%r10d, %r14d
movl	%r11d, %r15d
llq	0xb8a <w2c_needle_search+0x6ba>
movl	%r15d, %r11d
movl	%r14d, %r10d
movl	-0x2c(%rbp), %r15d
movl	%r13d, %r9d
movq	-0x38(%rbp), %r13
movl	%r12d, %r8d
movq	-0x40(%rbp), %rcx
ud2
movq	0x28(%rcx), %rax
movq	0x50(%rcx), %rcx
jmp	0x63c <w2c_needle_search+0x16c>
movq	$0x0, %rdi
movl	$0x1, %esi
movl	%r8d, %r12d
movq	%r13, -0x38(%rbp)
movl	%r9d, %r13d
movl	%r15d, -0x2c(%rbp)
movl	%r10d, %r14d
movl	%r11d, %r15d
llq	0xbd6 <w2c_needle_search+0x706>
movl	%r15d, %r11d
movl	%r14d, %r10d
movl	-0x2c(%rbp), %r15d
movl	%r13d, %r9d
movq	-0x38(%rbp), %r13
movl	%r12d, %r8d
movq	-0x40(%rbp), %rcx
ud2
movq	0x28(%rcx), %rax
movq	0x50(%rcx), %rcx
jmp	0x651 <w2c_needle_search+0x181>
movq	$0x0, %rdi
movl	$0x1, %esi
movl	%r8d, %r12d
movq	%r13, -0x38(%rbp)
movl	%r9d, %r13d
movl	%r15d, -0x2c(%rbp)
movl	%r10d, %r14d
movl	%r11d, %r15d
llq	0xc22 <w2c_needle_search+0x752>
movl	%r15d, %r11d
movl	%r14d, %r10d
movl	-0x2c(%rbp), %r15d
movl	%r13d, %r9d
movq	-0x38(%rbp), %r13
movl	%r12d, %r8d
movq	-0x40(%rbp), %rcx
ud2
movq	0x28(%rcx), %rax
movq	0x50(%rcx), %rcx
jmp	0x666 <w2c_needle_search+0x196>
movq	$0x0, %rdi
movl	$0x1, %esi
movl	%r8d, %r12d
movq	%r13, -0x38(%rbp)
movl	%r9d, %r13d
movl	%r15d, -0x2c(%rbp)
movl	%r10d, %r14d
movl	%r11d, %r15d
llq	0xc6e <w2c_needle_search+0x79e>
movl	%r15d, %r11d
movl	%r14d, %r10d
movl	-0x2c(%rbp), %r15d
movl	%r13d, %r9d
movq	-0x38(%rbp), %r13
movl	%r12d, %r8d
movq	-0x40(%rbp), %rcx
ud2
movq	0x28(%rcx), %rax
movq	0x50(%rcx), %rcx
jmp	0x67b <w2c_needle_search+0x1ab>
movq	$0x0, %rdi
movl	$0x1, %esi
movl	%r8d, %r12d
movq	%r13, -0x38(%rbp)
movl	%r9d, %r13d
movl	%r15d, -0x2c(%rbp)
movl	%r10d, %r14d
movl	%r11d, %r15d
llq	0xcba <w2c_needle_search+0x7ea>
movl	%r15d, %r11d
movl	%r14d, %r10d
movl	-0x2c(%rbp), %r15d
movl	%r13d, %r9d
movq	-0x38(%rbp), %r13
movl	%r12d, %r8d
movq	-0x40(%rbp), %rcx
ud2
movq	0x28(%rcx), %rax
movq	0x50(%rcx), %rcx
jmp	0x690 <w2c_needle_search+0x1c0>
movq	$0x0, %rdi
movl	$0x1, %esi
movl	%r8d, %r12d
movq	%r13, -0x38(%rbp)
movl	%r9d, %r13d
movl	%r15d, -0x2c(%rbp)
movl	%r10d, %r14d
movl	%r11d, %r15d
llq	0xd06 <w2c_needle_search+0x836>
movl	%r15d, %r11d
movl	%r14d, %r10d
movl	-0x2c(%rbp), %r15d
movl	%r13d, %r9d
movq	-0x38(%rbp), %r13
movl	%r12d, %r8d
movq	-0x40(%rbp), %rcx
ud2
movq	0x28(%rcx), %rax
movq	0x50(%rcx), %rcx
jmp	0x6a5 <w2c_needle_search+0x1d5>
movq	$0x0, %rdi
movl	$0x1, %esi
movl	%r8d, %r12d
movq	%r13, -0x38(%rbp)
movl	%r9d, %r13d
movl	%r15d, -0x2c(%rbp)
movl	%r10d, %r14d
movl	%r11d, %r15d
llq	0xd52 <w2c_needle_search+0x882>
movl	%r15d, %r11d
movl	%r14d, %r10d
movl	-0x2c(%rbp), %r15d
movl	%r13d, %r9d
movq	-0x38(%rbp), %r13
movl	%r12d, %r8d
movq	-0x40(%rbp), %rcx
ud2
movq	0x28(%rcx), %rax
movq	0x50(%rcx), %rcx
jmp	0x6ba <w2c_needle_search+0x1ea>
movq	$0x0, %rdi
movl	$0x1, %esi
movl	%r8d, %r12d
movq	%r13, -0x38(%rbp)
movl	%r9d, %r13d
movl	%r15d, -0x2c(%rbp)
movl	%r10d, %r14d
movl	%r11d, %r15d
llq	0xd9e <w2c_needle_search+0x8ce>
movl	%r15d, %r11d
movl	%r14d, %r10d
movl	-0x2c(%rbp), %r15d
movl	%r13d, %r9d
movq	-0x38(%rbp), %r13
movl	%r12d, %r8d
ud2
movq	-0x40(%rbp), %rax
movq	0x28(%rax), %rax
jmp	0x6cf <w2c_needle_search+0x1ff>
nopw	%cs:(%rax,%rax)

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
llq	0xde5 <w2c_needle_0x5F_dso_handle+0x5>
pushq	%rbp
movq	%rsp, %rbp
movq	%rdi, %rax
popq	%rbp
xorl	%edi, %edi
jmp	0xdf5 <w2c_needle_0x5F_dso_handle+0x15>
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
llq	0xe15 <w2c_needle_0x5F_data_end+0x5>
pushq	%rbp
movq	%rsp, %rbp
leaq	0x4(%rdi), %rax
popq	%rbp
xorl	%edi, %edi
jmp	0xe26 <w2c_needle_0x5F_data_end+0x16>
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
llq	0xe45 <w2c_needle_0x5F_stack_low+0x5>
pushq	%rbp
movq	%rsp, %rbp
leaq	0x8(%rdi), %rax
popq	%rbp
xorl	%edi, %edi
jmp	0xe56 <w2c_needle_0x5F_stack_low+0x16>
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
llq	0xe75 <w2c_needle_0x5F_stack_high+0x5>
pushq	%rbp
movq	%rsp, %rbp
leaq	0xc(%rdi), %rax
popq	%rbp
xorl	%edi, %edi
jmp	0xe86 <w2c_needle_0x5F_stack_high+0x16>
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
llq	0xea5 <w2c_needle_0x5F_global_base+0x5>
pushq	%rbp
movq	%rsp, %rbp
leaq	0x10(%rdi), %rax
popq	%rbp
xorl	%edi, %edi
jmp	0xeb6 <w2c_needle_0x5F_global_base+0x16>
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
llq	0xed5 <w2c_needle_0x5F_heap_base+0x5>
pushq	%rbp
movq	%rsp, %rbp
leaq	0x14(%rdi), %rax
popq	%rbp
xorl	%edi, %edi
jmp	0xee6 <w2c_needle_0x5F_heap_base+0x16>
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
llq	0xf05 <w2c_needle_0x5F_heap_end+0x5>
pushq	%rbp
movq	%rsp, %rbp
leaq	0x18(%rdi), %rax
popq	%rbp
xorl	%edi, %edi
jmp	0xf16 <w2c_needle_0x5F_heap_end+0x16>
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
llq	0xf35 <w2c_needle_0x5F_memory_base+0x5>
pushq	%rbp
movq	%rsp, %rbp
leaq	0x1c(%rdi), %rax
popq	%rbp
xorl	%edi, %edi
jmp	0xf46 <w2c_needle_0x5F_memory_base+0x16>
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
llq	0xf65 <w2c_needle_0x5F_table_base+0x5>
pushq	%rbp
movq	%rsp, %rbp
leaq	0x20(%rdi), %rax
popq	%rbp
xorl	%edi, %edi
jmp	0xf76 <w2c_needle_0x5F_table_base+0x16>
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
llq	0xf95 <wasm2c_needle_instantiate+0x5>
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
llq	0x1019 <wasm2c_needle_instantiate+0x89>
movq	%rax, 0x28(%rbx)
testq	%rax, %rax
je	0x103a <wasm2c_needle_instantiate+0xaa>
q	$0x20000, %rax          # imm = 0x20000
movq	%rax, 0x30(%rbx)
popq	%rbx
popq	%rbp
xorl	%eax, %eax
xorl	%edi, %edi
xorl	%esi, %esi
jmp	0x103a <wasm2c_needle_instantiate+0xaa>
movl	$0x20000, %esi          # imm = 0x20000
movq	$0x0, %rdi
llq	0x104b <wasm2c_needle_instantiate+0xbb>
movq	$0x0, 0x40(%rbx)
movq	$0x0, 0x50(%rbx)
xorl	%eax, %eax
jmp	0x1028 <wasm2c_needle_instantiate+0x98>
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
llq	0x1075 <wasm2c_needle_free+0x5>
pushq	%rbp
movq	%rsp, %rbp
pushq	%rbx
movq	%rdi, %rbx
movq	0x28(%rdi), %rdi
testq	%rdi, %rdi
je	0x1093 <wasm2c_needle_free+0x23>
llq	0x108b <wasm2c_needle_free+0x1b>
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
jmp	0x10c8 <wasm2c_needle_free+0x58>
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
llq	0x10e5 <wasm_rt_free_memory+0x5>
testq	%rdi, %rdi
je	0x1133 <wasm_rt_free_memory+0x53>
pushq	%rbp
movq	%rsp, %rbp
pushq	%rbx
movq	%rdi, %rbx
movq	(%rdi), %rdi
testq	%rdi, %rdi
je	0x1106 <wasm_rt_free_memory+0x26>
llq	0x10ff <wasm_rt_free_memory+0x1f>
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
jmp	0x113b <wasm_rt_free_memory+0x5b>
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
llq	0x1155 <wasm2c_needle_get_func_type+0x5>
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
je	0x11dc <wasm2c_needle_get_func_type+0x8c>
movq	$0x0, 0x10(%rsp)
movq	$0x0, 0x8(%rsp)
movq	$0x0, (%rsp)
xorl	$0x1, %edi
movl	%edi, %eax
orl	%esi, %eax
jne	0x11e8 <wasm2c_needle_get_func_type+0x98>
leaq	0x20(%rsp), %rax
movq	%rax, 0x10(%rsp)
leaq	0x10(%rbp), %rax
movq	%rax, 0x8(%rsp)
movabsq	$0x3000000010, %rax     # imm = 0x3000000010
movq	%rax, (%rsp)
movl	$0x10, %eax
mpq	$0x28, %rax
ja	0x1236 <wasm2c_needle_get_func_type+0xe6>
movl	$0x10, %ecx
q	0x10(%rsp), %rcx
l	$0x8, %eax
movl	%eax, (%rsp)
jmp	0x1244 <wasm2c_needle_get_func_type+0xf4>
movq	$0x0, %rax
jmp	0x1282 <wasm2c_needle_get_func_type+0x132>
xorl	$0x1, %esi
orl	%esi, %edi
jne	0x1280 <wasm2c_needle_get_func_type+0x130>
leaq	0x20(%rsp), %rax
movq	%rax, 0x10(%rsp)
leaq	0x10(%rbp), %rax
movq	%rax, 0x8(%rsp)
movabsq	$0x3000000010, %rax     # imm = 0x3000000010
movq	%rax, (%rsp)
movl	$0x10, %eax
movl	$0x10, %ecx
mpq	$0x28, %rcx
ja	0x1256 <wasm2c_needle_get_func_type+0x106>
q	0x10(%rsp), %rcx
l	$0x8, %eax
movl	%eax, (%rsp)
mpl	$0x0, (%rcx)
jne	0x1280 <wasm2c_needle_get_func_type+0x130>
jmp	0x1269 <wasm2c_needle_get_func_type+0x119>
movq	0x8(%rsp), %rcx
leaq	0x8(%rcx), %rax
movq	%rax, 0x8(%rsp)
xorl	%eax, %eax
mpl	$0x0, (%rcx)
movq	$0x0, %rcx
moveq	%rcx, %rax
jmp	0x1282 <wasm2c_needle_get_func_type+0x132>
movq	0x8(%rsp), %rcx
leaq	0x8(%rcx), %rdx
movq	%rdx, 0x8(%rsp)
mpl	$0x0, (%rcx)
jne	0x1280 <wasm2c_needle_get_func_type+0x130>
mpl	$0x28, %eax
ja	0x129a <wasm2c_needle_get_func_type+0x14a>
movl	%eax, %ecx
q	0x10(%rsp), %rcx
l	$0x8, %eax
movl	%eax, (%rsp)
mpl	$0x0, (%rcx)
je	0x12ad <wasm2c_needle_get_func_type+0x15d>
xorl	%eax, %eax
movq	%rbp, %rsp
popq	%rbp
xorl	%ecx, %ecx
xorl	%edi, %edi
xorl	%edx, %edx
xorl	%esi, %esi
xorl	%r8d, %r8d
xorl	%r9d, %r9d
jmp	0x129a <wasm2c_needle_get_func_type+0x14a>
movq	0x8(%rsp), %rcx
leaq	0x8(%rcx), %rax
movq	%rax, 0x8(%rsp)
mpl	$0x0, (%rcx)
jne	0x1280 <wasm2c_needle_get_func_type+0x130>
movq	$0x0, %rax
jmp	0x1282 <wasm2c_needle_get_func_type+0x132>
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
llq	0x12d5 <wasm_rt_set_fuel+0x5>
pushq	%rbp
movq	%rsp, %rbp
movq	%rdi, (%rip)            # 0x12e0 <wasm_rt_set_fuel+0x10>
popq	%rbp
xorl	%edi, %edi
jmp	0x12e9 <wasm_rt_set_fuel+0x19>
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
llq	0x1305 <wasm_rt_get_fuel+0x5>
pushq	%rbp
movq	%rsp, %rbp
movq	(%rip), %rax            # 0x1310 <wasm_rt_get_fuel+0x10>
popq	%rbp
jmp	0x1317 <wasm_rt_get_fuel+0x17>
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
llq	0x1335 <wasm_rt_consume_fuel+0x5>
movq	(%rip), %rax            # 0x133c <wasm_rt_consume_fuel+0xc>
subq	%rdi, %rax
jb	0x1354 <wasm_rt_consume_fuel+0x24>
movq	%rax, (%rip)            # 0x1348 <wasm_rt_consume_fuel+0x18>
xorl	%eax, %eax
xorl	%edi, %edi
xorl	%esi, %esi
jmp	0x1354 <wasm_rt_consume_fuel+0x24>
pushq	%rbp
movq	%rsp, %rbp
movq	$0x0, %rdi
movl	$0xb, %esi
llq	0x1369 <wasm_rt_consume_fuel+0x39>
ud2
popq	%rbp
xorl	%eax, %eax
xorl	%edi, %edi
xorl	%esi, %esi
jmp	0x1378 <wasm_rt_consume_fuel+0x48>
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
llq	0x1395 <wasm_rt_allocate_memory+0x5>
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
je	0x13ff <wasm_rt_allocate_memory+0x6f>
movq	%r14, %rdi
movl	$0xdc0, %esi            # imm = 0xDC0
llq	0x13ee <wasm_rt_allocate_memory+0x5e>
movq	%rax, (%rbx)
testq	%rax, %rax
je	0x1425 <wasm_rt_allocate_memory+0x95>
q	%r14, %rax
movq	%rax, 0x8(%rbx)
jmp	0x140e <wasm_rt_allocate_memory+0x7e>
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
jmp	0x1425 <wasm_rt_allocate_memory+0x95>
movq	$0x0, %rdi
movq	%r14, %rsi
llq	0x1434 <wasm_rt_allocate_memory+0xa4>
movq	$0x0, 0x18(%rbx)
movq	$0x0, 0x28(%rbx)
movq	$0x0, 0x8(%rbx)
jmp	0x140e <wasm_rt_allocate_memory+0x7e>
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
llq	0x1465 <wasm_rt_allocate_funcref_table+0x5>
testq	%rdi, %rdi
je	0x14bb <wasm_rt_allocate_funcref_table+0x5b>
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
je	0x14b3 <wasm_rt_allocate_funcref_table+0x53>
movl	%edx, %r12d
movl	%r14d, %r15d
shlq	$0x5, %r15
movq	%r15, %rdi
movl	$0xdc0, %esi            # imm = 0xDC0
llq	0x14a7 <wasm_rt_allocate_funcref_table+0x47>
movq	%rax, (%rbx)
testq	%rax, %rax
je	0x14c9 <wasm_rt_allocate_funcref_table+0x69>
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
jmp	0x14c9 <wasm_rt_allocate_funcref_table+0x69>
movq	$0x0, %rdi
movq	%r15, %rsi
llq	0x14d8 <wasm_rt_allocate_funcref_table+0x78>
movl	$0x0, 0xc(%rbx)
movl	%r12d, 0x8(%rbx)
jmp	0x14b3 <wasm_rt_allocate_funcref_table+0x53>
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
llq	0x1505 <wasm_rt_free_funcref_table+0x5>
testq	%rdi, %rdi
je	0x1530 <wasm_rt_free_funcref_table+0x30>
pushq	%rbp
movq	%rsp, %rbp
pushq	%rbx
movq	%rdi, %rbx
movq	(%rdi), %rdi
testq	%rdi, %rdi
je	0x1526 <wasm_rt_free_funcref_table+0x26>
llq	0x151f <wasm_rt_free_funcref_table+0x1f>
movq	$0x0, (%rbx)
movq	$0x0, 0x8(%rbx)
popq	%rbx
popq	%rbp
xorl	%edi, %edi
jmp	0x1538 <wasm_rt_free_funcref_table+0x38>
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
llq	0x1555 <benchmark_search+0x5>
pushq	%rbp
movq	%rsp, %rbp
pushq	%r15
pushq	%r14
pushq	%r12
pushq	%rbx
ndq	$-0x10, %rsp
subq	$0x1c0, %rsp            # imm = 0x1C0
movl	(%rip), %ebx            # 0x1571 <benchmark_search+0x21>
movq	$0xf4240, (%rip) # imm = 0xF4240
# 0x157c <benchmark_search+0x2c>
movq	$0x0, %rdi
movl	%ebx, %esi
llq	0x158a <benchmark_search+0x3a>
movq	%rsp, %rdi
xorl	%r12d, %r12d
movl	$0x1b8, %edx            # imm = 0x1B8
xorl	%esi, %esi
llq	0x159c <benchmark_search+0x4c>
movq	$0xf4240, (%rip) # imm = 0xF4240
# 0x15a7 <benchmark_search+0x57>
llq	0x15ac <benchmark_search+0x5c>
movq	%rax, %r15
movq	$0x0, %rdi
movl	%ebx, %esi
llq	0x15bd <benchmark_search+0x6d>
movl	%eax, %r14d
llq	0x15c5 <benchmark_search+0x75>
subl	%r15d, %eax
movl	%eax, (%rsp,%r12,4)
incq	%r12
mpq	$0x6e, %r12
jne	0x159c <benchmark_search+0x4c>
xorl	%ebx, %ebx
movl	(%rsp,%rbx,4), %esi
movq	$0x0, %rdi
llq	0x15e6 <benchmark_search+0x96>
incq	%rbx
mpq	$0x6e, %rbx
jne	0x15d7 <benchmark_search+0x87>
movq	$0x0, %rdi
movl	%r14d, %esi
llq	0x15fe <benchmark_search+0xae>
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
jmp	0x1618 <benchmark_search+0xc8>

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
