	.text
	.globl	_manhattan
_manhattan:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$56, %rsp
	movq	%rdi, %r9 
	movq	%r9 , -8(%rbp)
	movq	%rsi, %r9 
	movq	%r9 , -16(%rbp)
	movq	%rdx, %r9 
	movq	%r9 , -24(%rbp)
	movq	%rcx, %r9 
	movq	%r9 , -32(%rbp)
	movq	-24(%rbp), %r9 
	movq	-8(%rbp), %rcx
	subq	%rcx, %r9 
	movq	%r9 , -40(%rbp)
	movq	-32(%rbp), %r9 
	movq	-16(%rbp), %rcx
	subq	%rcx, %r9 
	movq	%r9 , -48(%rbp)
	movq	-40(%rbp), %r9 
	movq	-48(%rbp), %rcx
	addq	%rcx, %r9 
	movq	%r9 , -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	_main
_main:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$40, %rsp
	movq	%rdi, %r9 
	movq	%r9 , -8(%rbp)
	movq	%rsi, %r9 
	movq	%r9 , -16(%rbp)
	subq	$8, %rsp
	movq	%rsp, -24(%rbp)
	movq	$0, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$-5, %r9 
	movq	%r9 , %rdi
	movq	$3, %r9 
	movq	%r9 , %rsi
	movq	$8, %r9 
	movq	%r9 , %rdx
	movq	$12, %r9 
	movq	%r9 , %rcx
	callq	_manhattan
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	