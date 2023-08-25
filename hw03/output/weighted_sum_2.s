	.text
	.globl	_main
_main:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$24, %rsp
	movq	%rdi, %r9 
	movq	%r9 , -8(%rbp)
	movq	%rsi, %r9 
	movq	%r9 , -16(%rbp)
	movq	$1, %r9 
	movq	%r9 , %rdi
	movq	$2, %r9 
	movq	%r9 , %rsi
	movq	$3, %r9 
	movq	%r9 , %rdx
	movq	$4, %r9 
	movq	%r9 , %rcx
	movq	$5, %r9 
	movq	%r9 , %r8 
	movq	$6, %r9 
	movq	%r9 , %r9 
	movq	$7, %r9 
	pushq	%r9 
	movq	$8, %r9 
	pushq	%r9 
	callq	_ll_weighted_sum
	addq	$16, %rsp
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	