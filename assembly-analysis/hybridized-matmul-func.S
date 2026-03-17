<w2c_matmul_matmul>:
callq	0x305 <w2c_matmul_matmul+0x5>
testl	%esi, %esi
je	0x6f8 <w2c_matmul_matmul+0x3f8>
pushq	%rbp
movq	%rsp, %rbp
pushq	%r15
pushq	%r14
pushq	%r13
pushq	%r12
pushq	%rbx
subq	$0x70, %rsp
movq	0x28(%rdi), %rcx
movl	%esi, %edx
xorl	%edi, %edi
xorl	%eax, %eax
movl	%esi, -0x2c(%rbp)
movq	%rdi, -0x98(%rbp)
shll	$0x7, %edi
addl	%esi, %edi
movl	0x7c(%rcx,%rdi), %esi
movl	%esi, -0x90(%rbp)
movl	0x78(%rcx,%rdi), %esi
movl	%esi, -0x8c(%rbp)
movl	0x74(%rcx,%rdi), %esi
movl	%esi, -0x88(%rbp)
movl	0x70(%rcx,%rdi), %esi
movl	%esi, -0x84(%rbp)
movl	0x6c(%rcx,%rdi), %esi
movl	%esi, -0x80(%rbp)
movl	0x68(%rcx,%rdi), %esi
movl	%esi, -0x7c(%rbp)
movl	0x64(%rcx,%rdi), %esi
movl	%esi, -0x78(%rbp)
movl	0x60(%rcx,%rdi), %esi
movl	%esi, -0x74(%rbp)
movl	0x5c(%rcx,%rdi), %esi
movl	%esi, -0x70(%rbp)
movl	0x58(%rcx,%rdi), %esi
movl	%esi, -0x6c(%rbp)
movl	0x54(%rcx,%rdi), %esi
movl	%esi, -0x68(%rbp)
movl	0x50(%rcx,%rdi), %esi
movl	%esi, -0x64(%rbp)
movl	0x4c(%rcx,%rdi), %esi
movl	%esi, -0x60(%rbp)
movl	0x48(%rcx,%rdi), %esi
movl	%esi, -0x5c(%rbp)
movl	0x44(%rcx,%rdi), %esi
movl	%esi, -0x58(%rbp)
movl	0x3c(%rcx,%rdi), %esi
movl	%esi, -0x54(%rbp)
movl	0x38(%rcx,%rdi), %esi
movl	%esi, -0x50(%rbp)
movl	0x34(%rcx,%rdi), %esi
movl	%esi, -0x4c(%rbp)
movl	0x30(%rcx,%rdi), %esi
movl	%esi, -0x48(%rbp)
movl	0x2c(%rcx,%rdi), %esi
movl	%esi, -0x44(%rbp)
movl	0x28(%rcx,%rdi), %esi
movl	%esi, -0x40(%rbp)
movl	0x24(%rcx,%rdi), %esi
movl	%esi, -0x3c(%rbp)
movl	0x20(%rcx,%rdi), %esi
movl	%esi, -0x38(%rbp)
movl	0x1c(%rcx,%rdi), %esi
movl	%esi, -0x34(%rbp)
movl	0x18(%rcx,%rdi), %esi
movl	%esi, -0x30(%rbp)
movl	0x14(%rcx,%rdi), %r11d
movl	0x10(%rcx,%rdi), %ebx
movl	0xc(%rcx,%rdi), %r14d
movl	0x8(%rcx,%rdi), %r15d
movl	(%rcx,%rdi), %r12d
movl	0x4(%rcx,%rdi), %r13d
movl	0x40(%rcx,%rdi), %edi
movq	$-0x80, %rsi
leal	(%rdx,%rsi), %r8d
addl	$0x1080, %r8d           # imm = 0x1080
movl	(%rcx,%r8), %r8d
imull	%r12d, %r8d
addl	%eax, %r8d
leal	(%rdx,%rsi), %eax
addl	$0x1100, %eax           # imm = 0x1100
movl	(%rcx,%rax), %eax
imull	%r13d, %eax
leal	(%rdx,%rsi), %r9d
addl	$0x1180, %r9d           # imm = 0x1180
movl	(%rcx,%r9), %r9d
imull	%r15d, %r9d
addl	%eax, %r9d
addl	%r8d, %r9d
leal	(%rdx,%rsi), %eax
addl	$0x1200, %eax           # imm = 0x1200
movl	(%rcx,%rax), %eax
imull	%r14d, %eax
leal	(%rdx,%rsi), %r8d
addl	$0x1280, %r8d           # imm = 0x1280
movl	(%rcx,%r8), %r10d
imull	%ebx, %r10d
addl	%eax, %r10d
leal	(%rdx,%rsi), %eax
addl	$0x1300, %eax           # imm = 0x1300
movl	(%rcx,%rax), %r8d
imull	%r11d, %r8d
addl	%r10d, %r8d
addl	%r9d, %r8d
leal	(%rdx,%rsi), %eax
addl	$0x1380, %eax           # imm = 0x1380
movl	(%rcx,%rax), %eax
imull	-0x30(%rbp), %eax
leal	(%rdx,%rsi), %r9d
addl	$0x1400, %r9d           # imm = 0x1400
movl	(%rcx,%r9), %r9d
imull	-0x34(%rbp), %r9d
addl	%eax, %r9d
leal	(%rdx,%rsi), %eax
addl	$0x1480, %eax           # imm = 0x1480
movl	(%rcx,%rax), %r10d
imull	-0x38(%rbp), %r10d
addl	%r9d, %r10d
leal	(%rdx,%rsi), %eax
addl	$0x1500, %eax           # imm = 0x1500
movl	(%rcx,%rax), %eax
imull	-0x3c(%rbp), %eax
addl	%r10d, %eax
addl	%r8d, %eax
leal	(%rdx,%rsi), %r8d
addl	$0x1580, %r8d           # imm = 0x1580
movl	(%rcx,%r8), %r8d
imull	-0x40(%rbp), %r8d
leal	(%rdx,%rsi), %r9d
addl	$0x1600, %r9d           # imm = 0x1600
movl	(%rcx,%r9), %r9d
imull	-0x44(%rbp), %r9d
addl	%r8d, %r9d
leal	(%rdx,%rsi), %r8d
addl	$0x1680, %r8d           # imm = 0x1680
movl	(%rcx,%r8), %r8d
imull	-0x48(%rbp), %r8d
addl	%r9d, %r8d
leal	(%rdx,%rsi), %r9d
addl	$0x1700, %r9d           # imm = 0x1700
movl	(%rcx,%r9), %r9d
imull	-0x4c(%rbp), %r9d
addl	%r8d, %r9d
leal	(%rdx,%rsi), %r8d
addl	$0x1780, %r8d           # imm = 0x1780
movl	(%rcx,%r8), %r8d
imull	-0x50(%rbp), %r8d
addl	%r9d, %r8d
addl	%eax, %r8d
leal	(%rdx,%rsi), %eax
addl	$0x1800, %eax           # imm = 0x1800
movl	(%rcx,%rax), %eax
imull	-0x54(%rbp), %eax
leal	(%rdx,%rsi), %r9d
addl	$0x1880, %r9d           # imm = 0x1880
movl	(%rcx,%r9), %r9d
imull	%edi, %r9d
addl	%eax, %r9d
leal	(%rdx,%rsi), %eax
addl	$0x1900, %eax           # imm = 0x1900
movl	(%rcx,%rax), %eax
imull	-0x58(%rbp), %eax
addl	%r9d, %eax
leal	(%rdx,%rsi), %r9d
addl	$0x1980, %r9d           # imm = 0x1980
movl	(%rcx,%r9), %r9d
imull	-0x5c(%rbp), %r9d
addl	%eax, %r9d
leal	(%rdx,%rsi), %eax
addl	$0x1a00, %eax           # imm = 0x1A00
movl	(%rcx,%rax), %r10d
imull	-0x60(%rbp), %r10d
addl	%r9d, %r10d
leal	(%rdx,%rsi), %eax
addl	$0x1a80, %eax           # imm = 0x1A80
movl	(%rcx,%rax), %eax
imull	-0x64(%rbp), %eax
addl	%r10d, %eax
addl	%r8d, %eax
leal	(%rdx,%rsi), %r8d
addl	$0x1b00, %r8d           # imm = 0x1B00
movl	(%rcx,%r8), %r8d
imull	-0x68(%rbp), %r8d
leal	(%rdx,%rsi), %r9d
addl	$0x1b80, %r9d           # imm = 0x1B80
movl	(%rcx,%r9), %r9d
imull	-0x6c(%rbp), %r9d
addl	%r8d, %r9d
leal	(%rdx,%rsi), %r8d
addl	$0x1c00, %r8d           # imm = 0x1C00
movl	(%rcx,%r8), %r8d
imull	-0x70(%rbp), %r8d
addl	%r9d, %r8d
leal	(%rdx,%rsi), %r9d
addl	$0x1c80, %r9d           # imm = 0x1C80
movl	(%rcx,%r9), %r9d
imull	-0x74(%rbp), %r9d
addl	%r8d, %r9d
leal	(%rdx,%rsi), %r8d
addl	$0x1d00, %r8d           # imm = 0x1D00
movl	(%rcx,%r8), %r8d
imull	-0x78(%rbp), %r8d
addl	%r9d, %r8d
leal	(%rdx,%rsi), %r9d
addl	$0x1d80, %r9d           # imm = 0x1D80
movl	(%rcx,%r9), %r9d
imull	-0x7c(%rbp), %r9d
addl	%r8d, %r9d
leal	(%rdx,%rsi), %r8d
addl	$0x1e00, %r8d           # imm = 0x1E00
movl	(%rcx,%r8), %r8d
imull	-0x80(%rbp), %r8d
addl	%r9d, %r8d
addl	%eax, %r8d
leal	(%rdx,%rsi), %eax
addl	$0x1e80, %eax           # imm = 0x1E80
movl	(%rcx,%rax), %eax
imull	-0x84(%rbp), %eax
leal	(%rdx,%rsi), %r9d
addl	$0x1f00, %r9d           # imm = 0x1F00
movl	(%rcx,%r9), %r9d
imull	-0x88(%rbp), %r9d
addl	%eax, %r9d
leal	(%rdx,%rsi), %eax
addl	$0x1f80, %eax           # imm = 0x1F80
movl	(%rcx,%rax), %r10d
imull	-0x8c(%rbp), %r10d
addl	%r9d, %r10d
leal	(%rdx,%rsi), %eax
addl	$0x2000, %eax           # imm = 0x2000
movl	(%rcx,%rax), %eax
imull	-0x90(%rbp), %eax
addl	%r10d, %eax
addl	%r8d, %eax
addq	$0x4, %rsi
jne	0x419 <w2c_matmul_matmul+0x119>
movq	-0x98(%rbp), %rdi
incq	%rdi
cmpq	$0x20, %rdi
movl	-0x2c(%rbp), %esi
jne	0x32b <w2c_matmul_matmul+0x2b>
addq	$0x70, %rsp
popq	%rbx
popq	%r12
popq	%r13
popq	%r14
popq	%r15
popq	%rbp
jmp	0x6fa <w2c_matmul_matmul+0x3fa>
xorl	%eax, %eax
xorl	%ecx, %ecx
xorl	%edi, %edi
xorl	%edx, %edx
xorl	%esi, %esi
xorl	%r8d, %r8d
xorl	%r9d, %r9d
xorl	%r10d, %r10d
xorl	%r11d, %r11d
jmp	0x714 <w2c_matmul_matmul+0x414>
nopw	%cs:(%rax,%rax)