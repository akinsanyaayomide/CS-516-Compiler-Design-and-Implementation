	.text
	.globl	main
main:
	subq	$32, %rbp
	movq	$5, %r12
	movq	$9, %r13
	imulq	%r12, %r13
	movq	%r13, %r8 
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