	.text
	.globl	_program
_program:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rsp, %rdx
	subq	$8, %rsp
	movq	%rsp, %rsi
	movq	$9, %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	movq	(%rdx), %rdi
	movq	(%rdx), %r8 
	addq	%r8 , %rdi
	movq	%rdi, (%rsi)
	movq	(%rdx), %rdi
	movq	(%rdx), %r8 
	movq	(%rdx), %rdx
	imulq	%r8 , %rdx
	addq	%rdi, %rdx
	movq	(%rsi), %rsi
	subq	%rsi, %rdx
	movq	%rdx, %rax
	movq	$2, %rcx
	shrq	%cl, %rax
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	$2, %rcx
	shlq	%cl, %rax
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	$2, %rcx
	sarq	%cl, %rax
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	