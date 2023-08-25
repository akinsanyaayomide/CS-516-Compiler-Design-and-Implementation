	.text
	.globl	_foo
_foo:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%r12
	pushq	%r13
	pushq	%r14
	pushq	%r15
	pushq	%r15
	movq	%rsp, %r11
	subq	$40, %rsp
	movq	%rdi, %r10
	movq	%r10, -32(%r11)
	movq	%rsi, %r10
	movq	%r10, -40(%r11)
	subq	$8, %rsp
	movq	%rsp, 0(%r11)
	movq	-32(%r11), %r10
	movq	%r10, %r12
	movq	-40(%r11), %r10
	movq	%r10, %r13
	addq	%r12, %r13
	movq	%r13, -8(%r11)
	movq	-8(%r11), %r10
	movq	%r10, %r12
	movq	0(%r11), %r10
	movq	%r10, %r13
	movq	%r12, (%r13)
	movq	0(%r11), %r10
	movq	%r10, %r12
	movq	(%r12), %r13
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
	subq	$32, %rsp
	movq	%rdi, %r10
	movq	%r10, -24(%r11)
	movq	%rsi, %r10
	movq	%r10, -32(%r11)
	pushq	%r11
	leaq	_foo(%rip)
	leaq	_ll_callback(%rip)
	callq	*%r10
	popq	%r11
	movq	%rax, 0(%r11)
	pushq	%r11
	movq	0(%r11), %r10
	movq	%r10, %rdi
	leaq	_ll_ltoa(%rip)
	callq	*%r10
	popq	%r11
	movq	%rax, -8(%r11)
	pushq	%r11
	movq	-8(%r11), %r10
	movq	%r10, %rdi
	leaq	_ll_puts(%rip)
	callq	*%r10
	popq	%r11
	movq	%rax, -16(%r11)
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