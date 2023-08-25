	.data
	.globl	_arr
_arr:
	.quad	0
	.text
	.globl	_program
_program:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	$17, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	