	.text
	.globl	main
main:
	subq	$40, %rbp
	subq	$8, %rsp
	movq	%rsp, %r8 
	movq	$0, %r12
	movq	%r8 , %r10
	movq	%r10, %r13
	movq	%r12, (%r13)
	movq	$42, %rax
	movq	-8(%rbp), %rbx
	movq	-16(%rbp), %r12
	movq	-24(%rbp), %r13
	movq	-32(%rbp), %r14
	movq	-40(%rbp), %r15
	movq	%rbp, %rsp
	addq	$8, %rsp
	movq	(%rbp), %rbp
	retq	