	.text
	.globl	bar
bar:
	subq	$208, %rbp
	movq	32(%rbp), %r10
	movq	%r10, %r12
	movq	40(%rbp), %r10
	movq	%r10, %r13
	addq	%r12, %r13
	movq	%r13, 96(%rbp)
	movq	96(%rbp), %r10
	movq	%r10, %r12
	movq	48(%rbp), %r10
	movq	%r10, %r13
	addq	%r12, %r13
	movq	%r13, 104(%rbp)
	movq	104(%rbp), %r10
	movq	%r10, %r12
	movq	56(%rbp), %r10
	movq	%r10, %r13
	addq	%r12, %r13
	movq	%r13, 112(%rbp)
	movq	112(%rbp), %r10
	movq	%r10, %r12
	movq	64(%rbp), %r10
	movq	%r10, %r13
	addq	%r12, %r13
	movq	%r13, 120(%rbp)
	movq	120(%rbp), %r10
	movq	%r10, %r12
	movq	72(%rbp), %r10
	movq	%r10, %r13
	addq	%r12, %r13
	movq	%r13, 128(%rbp)
	movq	128(%rbp), %r10
	movq	%r10, %r12
	movq	80(%rbp), %r10
	movq	%r10, %r13
	addq	%r12, %r13
	movq	%r13, 136(%rbp)
	movq	136(%rbp), %r10
	movq	%r10, %r12
	movq	88(%rbp), %r10
	movq	%r10, %r13
	addq	%r12, %r13
	movq	%r13, 144(%rbp)
	movq	144(%rbp), %r10
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
	.globl	foo
foo:
	subq	$24, %rbp
	pushq	%r11
	subq	$16, %rsp
	movq	%rsi, %r10
	movq	%r10, %rdi
	movq	%rsi, %r10
	movq	%r10, %rsi
	movq	%rsi, %r10
	movq	%r10, %rdx
	movq	%rsi, %r10
	movq	%r10, %rcx
	movq	%rsi, %r10
	movq	%r10, %r8 
	movq	%rsi, %r10
	movq	%r10, %r9 
	movq	%rsi, %r10
	movq	%r10, 0(%rsp)
	movq	%rsi, %r10
	movq	%r10, 8(%rsp)
	leaq	_bar(%rip), %r10
	callq	*%r10
	addq	$16, %rsp
	popq	%r11
	movq	%rax, %rdx
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
	movq	$3, %rdi
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