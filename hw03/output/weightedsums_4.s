	.text
	.globl	_weighted_sum
_weighted_sum:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$112, %rsp
	movq	%rdi, %r9 
	movq	%r9 , -8(%rbp)
	movq	%rsi, %r9 
	movq	%r9 , -16(%rbp)
	movq	%rdx, %r9 
	movq	%r9 , -24(%rbp)
	movq	%rcx, %r9 
	movq	%r9 , -32(%rbp)
	movq	%r8 , %r9 
	movq	%r9 , -40(%rbp)
	movq	%r9 , %r9 
	movq	%r9 , -48(%rbp)
	movq	16(%rbp), %r9 
	movq	%r9 , -56(%rbp)
	movq	24(%rbp), %r9 
	movq	%r9 , -64(%rbp)
	movq	32(%rbp), %r9 
	movq	%r9 , -72(%rbp)
	movq	-8(%rbp), %r9 
	movq	$0, %rcx
	imulq	%rcx, %r9 
	movq	%r9 , -80(%rbp)
	movq	-16(%rbp), %r9 
	movq	$1, %rcx
	imulq	%rcx, %r9 
	movq	%r9 , -88(%rbp)
	movq	-88(%rbp), %r9 
	movq	-80(%rbp), %rcx
	addq	%rcx, %r9 
	movq	%r9 , -96(%rbp)
	movq	-24(%rbp), %r9 
	movq	$2, %rcx
	imulq	%rcx, %r9 
	movq	%r9 , -104(%rbp)
	movq	-104(%rbp), %r9 
	movq	-96(%rbp), %rcx
	addq	%rcx, %r9 
	movq	%r9 , -112(%rbp)
	movq	-112(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
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
	movq	$0, %r9 
	movq	%r9 , %rdi
	movq	$1, %r9 
	movq	%r9 , %rsi
	movq	$2, %r9 
	movq	%r9 , %rdx
	movq	$3, %r9 
	movq	%r9 , %rcx
	movq	$4, %r9 
	movq	%r9 , %r8 
	movq	$5, %r9 
	movq	%r9 , %r9 
	movq	$6, %r9 
	pushq	%r9 
	movq	$7, %r9 
	pushq	%r9 
	movq	$8, %r9 
	pushq	%r9 
	callq	_weighted_sum
	addq	$24, %rsp
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	