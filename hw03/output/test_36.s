	.text
	.globl	foo
foo:
	subq	$64, %rbp
	subq	$8, %rsp
	movq	%rsp, %r8 
	movq	%rdx, %r10
	movq	%r10, %r12
	movq	%rcx, %r10
	movq	%r10, %r13
	addq	%r12, %r13
	movq	%r13, %r9 
	movq	%r9 , %r10
	movq	%r10, %r12
	movq	%r8 , %r10
	movq	%r10, %r13
	movq	%r12, (%r13)
	movq	%r8 , %r10
	movq	%r10, %r12
	movq	(%r12), %r13
	movq	%r13, 24(%rbp)
	movq	24(%rbp), %r10
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
	subq	$48, %rbp
	pushq	%r11
	leaq	_foo(%rip), %rdi
	leaq	_ll_callback(%rip), %r10
	callq	*%r10
	popq	%r11
	movq	%rax, %r8 
	pushq	%r11
	movq	%r8 , %r10
	movq	%r10, %rdi
	leaq	_ll_ltoa(%rip), %r10
	callq	*%r10
	popq	%r11
	movq	%rax, %r9 
	pushq	%r11
	movq	%r9 , %r10
	movq	%r10, %rdi
	leaq	_ll_puts(%rip), %r10
	callq	*%r10
	popq	%r11
	movq	%rax, 16(%rbp)
	movq	$0, %rax
	movq	-8(%rbp), %rbx
	movq	-16(%rbp), %r12
	movq	-24(%rbp), %r13
	movq	-32(%rbp), %r14
	movq	-40(%rbp), %r15
	movq	%rbp, %rsp
	addq	$8, %rsp
	movq	(%rbp), %rbp
	retq	