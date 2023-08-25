	.data
	.globl	_x
_x:
	.quad	42
	.text
	.globl	_program
_program:
	pushq	%rbp
	movq	%rsp, %rbp
	leaq	_x(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	