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
	movq	-112(%r11), %r12
	movq	0(%r11), %r10
	movq	0(%r11), %r13
	movq	%r12, (%r13)
	movq	$1, %r12
	movq	-104(%r11), %r10
	movq	-104(%r11), %r13
	movq	%r12, (%r13)
	jmp	_start
	jmp	_start
	.text
_start:
	movq	0(%r11), %r10
	movq	0(%r11), %r12
	movq	(%r12), %r13
	movq	%r13, -8(%r11)
	movq	-8(%r11), %r10
	movq	-8(%r11), %r12
	movq	$0, %r13
	movq	$0, -16(%r11)
	cmpq	%r13, %r12
	setg	-16(%r11)
	movq	-16(%r11), %rcx
	cmpq	$0, %rcx
	jge	_then
	jmp	_end
	.text
_then:
	movq	-104(%r11), %r10
	movq	-104(%r11), %r12
	movq	(%r12), %r13
	movq	%r13, -24(%r11)
	movq	0(%r11), %r10
	movq	0(%r11), %r12
	movq	(%r12), %r13
	movq	%r13, -32(%r11)
	movq	-24(%r11), %r10
	movq	-24(%r11), %r12
	movq	-32(%r11), %r10
	movq	-32(%r11), %r13
	imulq	%r12, %r13
	movq	%r13, -40(%r11)
	movq	-40(%r11), %r10
	movq	-40(%r11), %r12
	movq	-104(%r11), %r10
	movq	-104(%r11), %r13
	movq	%r12, (%r13)
	movq	0(%r11), %r10
	movq	0(%r11), %r12
	movq	(%r12), %r13
	movq	%r13, -48(%r11)
	movq	-48(%r11), %r10
	movq	-48(%r11), %r12
	movq	$1, %r13
	subq	%r13, %r12
	movq	%r12, -56(%r11)
	movq	-56(%r11), %r10
	movq	-56(%r11), %r12
	movq	0(%r11), %r10
	movq	0(%r11), %r13
	movq	%r12, (%r13)
	jmp	_start
	.text
_end:
	movq	-104(%r11), %r10
	movq	-104(%r11), %r12
	movq	(%r12), %r13
	movq	%r13, -64(%r11)
	movq	-64(%r11), %rax
	movq	%rbp, %rsp
	popq	%rbp
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
	movq	0(%r11), %r13
	movq	%r12, (%r13)
	pushq	%r11
	movq	$5, %rdi
	leaq	_factorial(%rip), %r10
	callq	*%r10
	popq	%r11
	movq	%rax, -8(%r11)
	movq	-8(%r11), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	movq	-8(%r11), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	