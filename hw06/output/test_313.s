	.data
	.globl	_plus
_plus:
	.quad	_add
	.text
	.globl	_add
_add:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rsp, %rdx
	subq	$8, %rsp
	movq	%rsp, %r8 
	movq	%rdi, (%rdx)
	movq	%rsi, (%r8 )
	movq	(%rdx), %rdx
	movq	(%r8 ), %rsi
	addq	%rsi, %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	_program
_program:
	pushq	%rbp
	movq	%rsp, %rbp
	leaq	_plus(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	pushq	%r15
	movq	%rdx, %r15
	movq	$1, %rsi
	movq	$1, %rdi
	callq	*%r15
	popq	%r15
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	