	.data
	.globl	_arr
_arr:
	.quad	__global_arr6310
	.data
	.globl	__global_arr6310
__global_arr6310:
	.quad	4
	.quad	1
	.quad	2
	.quad	3
	.quad	4
	.text
	.globl	_program
_program:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	$5, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	