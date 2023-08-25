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
	subq	$32, %rsp
	movq	%rdi, %r10
	movq	%r10, -32(%r11)
	movq	-32(%r11), %r10
	movq	%r10, %r12
	movq	$0, %r13
	movq	$0, -24(%r11)
	cmpq	%r13, %r12
	sete	-24(%r11)
	movq	-24(%r11), %r10
	movq	%r10, %r10
	cmpq	$1, %r10
	je	_ret1
	jmp	_recurse
	movq	-24(%r11), %r10
	movq	%r10, %r10
	cmpq	$1, %r10
	je	_ret1
	jmp	_recurse
	.text
_ret1:
	movq	$1, %rax
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
_recurse:
	movq	-32(%r11), %r10
	movq	%r10, %r12
	movq	$1, %r13
	subq	%r13, %r12
	movq	%r12, 0(%r11)
	pushq	%r11
	movq	0(%r11), %r10
	movq	%r10, %rdi
	leaq	_factorial(%rip)
	callq	*%r10
	popq	%r11
	movq	%rax, -8(%r11)
	movq	-32(%r11), %r10
	movq	%r10, %r12
	movq	-8(%r11), %r10
	movq	%r10, %r13
	imulq	%r12, %r13
	movq	%r13, -16(%r11)
	movq	-16(%r11), %r10
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
	subq	$16, %rsp
	movq	%rdi, %r10
	movq	%r10, -16(%r11)
	movq	%rsi, %r10
	movq	%r10, -8(%r11)
	pushq	%r11
	movq	$5, %rdi
	leaq	_factorial(%rip)
	callq	*%r10
	popq	%r11
	movq	%rax, 0(%r11)
	movq	0(%r11), %r10
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
	movq	0(%r11), %r10
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