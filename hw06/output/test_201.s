	.data
	.globl	_gbl
_gbl:
	.quad	12
	.text
	.globl	_main
_main:
	pushq	%rbp
	movq	%rsp, %rbp
	leaq	_gbl(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	