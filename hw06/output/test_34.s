	.data
	.globl	_gbl
_gbl:
	.quad	1
	.quad	2
	.quad	3
	.quad	4
	.quad	5
	.quad	6
	.quad	7
	.text
	.globl	_main
_main:
	pushq	%rbp
	movq	%rsp, %rbp
	leaq	_gbl(%rip), %rax
	addq	$0, %rax
	addq	$48, %rax
	movq	%rax, %rdx
	movq	(%rdx), %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	