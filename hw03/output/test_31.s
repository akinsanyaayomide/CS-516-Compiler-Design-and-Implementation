	.text
	.globl	foo
foo:
	subq	$24, %rbp
	movq	%rsi, %r10
	movq	%r10, %r12
	movq	%rsi, %r10
	movq	%r10, %r13
	addq	%r12, %r13
	movq	%r13, %rdx
	movq	%rdx, %r10
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
	.globl	main
main:
	subq	$32, %rbp
	pushq	%r11
	movq	$17, %rdi
	leaq	_foo(%rip), %r10
	callq	*%r10
	popq	%r11
	movq	%rax, %r8 
	movq	%r8 , %r10
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