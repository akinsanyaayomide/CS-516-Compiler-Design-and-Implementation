	.text
	.globl	main
main:
	subq	$96, %rbp
	subq	$8, %rsp
	movq	%rsp, %r8 
	movq	$17, %r12
	movq	%r8 , %r10
	movq	%r10, %r13
	movq	%r12, (%r13)
	subq	$8, %rsp
	movq	%rsp, 16(%rbp)
	movq	%r8 , %r10
	movq	%r10, %r12
	movq	16(%rbp), %r10
	movq	%r10, %r13
	movq	%r12, (%r13)
	movq	16(%rbp), %r10
	movq	%r10, %r12
	movq	(%r12), %r13
	movq	%r13, 32(%rbp)
	movq	32(%rbp), %r10
	movq	%r10, %r12
	movq	(%r12), %r13
	movq	%r13, 40(%rbp)
	movq	40(%rbp), %r10
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