	.data
	.globl	_i
_i:
	.quad	9
	.text
	.globl	_program
_program:
	pushq	%rbp
	movq	%rsp, %rbp
	leaq	_i(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	