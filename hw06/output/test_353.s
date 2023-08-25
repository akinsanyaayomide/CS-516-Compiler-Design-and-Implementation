	.data
	.globl	_i
_i:
	.quad	3
	.text
	.globl	_program
_program:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	$341, %rax
	leaq	_i(%rip), %rcx
	movq	%rax, (%rcx)
	leaq	_i(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	