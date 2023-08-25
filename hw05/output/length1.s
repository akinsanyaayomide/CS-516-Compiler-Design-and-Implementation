	.text
	.globl	_program
_program:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$184, %rsp
	movq	%rdi, %rax
	movq	%rax, -8(%rbp)
	movq	%rsi, %rax
	movq	%rax, -16(%rbp)
	pushq	$0
	movq	%rsp, -24(%rbp)
	pushq	$0
	movq	%rsp, -32(%rbp)
	pushq	$0
	movq	%rsp, -40(%rbp)
	movq	-8(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, (%rax)
	movq	-16(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, (%rax)
	movq	$5, %rax
	movq	%rax, %rdi
	callq	_oat_alloc_array
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, -80(%rbp)
	movq	$3, %rcx
	movq	-80(%rbp), %rax
	movq	%rcx, (%rax)
	movq	-72(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$8, %rax
	movq	%rax, -96(%rbp)
	movq	$4, %rcx
	movq	-96(%rbp), %rax
	movq	%rcx, (%rax)
	movq	-72(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$16, %rax
	movq	%rax, -112(%rbp)
	movq	$5, %rcx
	movq	-112(%rbp), %rax
	movq	%rcx, (%rax)
	movq	-72(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$24, %rax
	movq	%rax, -128(%rbp)
	movq	$6, %rcx
	movq	-128(%rbp), %rax
	movq	%rcx, (%rax)
	movq	-72(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$32, %rax
	movq	%rax, -144(%rbp)
	movq	$7, %rcx
	movq	-144(%rbp), %rax
	movq	%rcx, (%rax)
	movq	-72(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, (%rax)
	movq	-40(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -168(%rbp)
	movq	-168(%rbp), %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, -176(%rbp)
	movq	-176(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -184(%rbp)
	movq	-184(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	