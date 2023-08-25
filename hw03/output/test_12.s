	.text
	.globl	_factorial
_factorial:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%r12
	pushq	%r13
	pushq	%r14
	pushq	%r15
	pushq	%r15
	movq	%rsp, %r11
	subq	$112, %rsp
	movq	%rdi, %r10
	movq	%r10, -112(%r11)
	subq	$8, %rsp
	movq	%rsp, 0(%r11)
	subq	$8, %rsp
	movq	%rsp, -104(%r11)
	movq	-112(%r11), %r10
	movq	%r10, %r12
	movq	0(%r11), %r10
	movq	%r10, %r13
	movq	%r12, (%r13)
	movq	$1, %r12
	movq	-104(%r11), %r10
	movq	%r10, %r13
	movq	%r12, (%r13)
	jmp	_start
	jmp	_start
	.text
_start:
	movq	0(%r11), %r10
	movq	%r10, %r12
	movq	(%r12), %r13
	movq	%r13, -8(%r11)
	movq	-8(%r11), %r10
	movq	%r10, %r12
	movq	$0, %r13
	movq	$0, -16(%r11)
	cmpq	%r13, %r12
	setg	-16(%r11)
	movq	-16(%r11), %r10
	movq	%r10, %r10
	cmpq	$1, %r10
	je	_then
	jmp	_end
	.text
_then:
	movq	-104(%r11), %r10
	movq	%r10, %r12
	movq	(%r12), %r13
	movq	%r13, -24(%r11)
	movq	0(%r11), %r10
	movq	%r10, %r12
	movq	(%r12), %r13
	movq	%r13, -32(%r11)
	movq	%r10, %r9 
	movq	%r10, %rcx
	imulq	%rcx, %r9 
	movq	%r9 , -40(%r11)
	movq	-40(%r11), %r10
	movq	%r10, %r12
	movq	-104(%r11), %r10
	movq	%r10, %r13
	movq	%r12, (%r13)
	movq	0(%r11), %r10
	movq	%r10, %r12
	movq	(%r12), %r13
	movq	%r13, -48(%r11)
	movq	%r10, %r9 
	movq	$1, %rcx
	subq	%rcx, %r9 
	movq	%r9 , -56(%r11)
	movq	-56(%r11), %r10
	movq	%r10, %r12
	movq	0(%r11), %r10
	movq	%r10, %r13
	movq	%r12, (%r13)
	jmp	_start
	.text
_end:
	movq	-104(%r11), %r10
	movq	%r10, %r12
	movq	(%r12), %r13
	movq	%r13, -64(%r11)
	movq	-64(%r11), %r10
	movq	%r10, %rax
	movq	-8(%rbp), %rbx
	movq	-16(%rbp), %r12
	movq	-24(%rbp), %r13
	movq	-32(%rbp), %r14
	movq	-40(%rbp), %r15
	movq	%rbp, %rsp
	addq	$8, %rsp
	movq	(%rbp), %rbp
	retq	
	.text
	.globl	_main
_main:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%r12
	pushq	%r13
	pushq	%r14
	pushq	%r15
	pushq	%r15
	movq	%rsp, %r11
	subq	$32, %rsp
	movq	%rdi, %r10
	movq	%r10, -32(%r11)
	movq	%rsi, %r10
	movq	%r10, -24(%r11)
	subq	$8, %rsp
	movq	%rsp, 0(%r11)
	movq	$0, %r12
	movq	0(%r11), %r10
	movq	%r10, %r13
	movq	%r12, (%r13)
	pushq	%r11
	movq	$5, %rdi
	leaq	_factorial(%rip), %r10
	callq	*%r10
	popq	%r11
	movq	%rax, -8(%r11)
	movq	-8(%r11), %r10
	movq	%r10, %rax
	movq	-8(%rbp), %rbx
	movq	-16(%rbp), %r12
	movq	-24(%rbp), %r13
	movq	-32(%rbp), %r14
	movq	-40(%rbp), %r15
	movq	%rbp, %rsp
	addq	$8, %rsp
	movq	(%rbp), %rbp
	retq	
	movq	-8(%r11), %r10
	movq	%r10, %rax
	movq	-8(%rbp), %rbx
	movq	-16(%rbp), %r12
	movq	-24(%rbp), %r13
	movq	-32(%rbp), %r14
	movq	-40(%rbp), %r15
	movq	%rbp, %rsp
	addq	$8, %rsp
	movq	(%rbp), %rbp
	retq	