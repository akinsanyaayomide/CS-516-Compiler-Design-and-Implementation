	.data
	.globl	_arr
_arr:
	.quad	__global_arr118
	.data
	.globl	__global_arr118
__global_arr118:
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
	leaq	_arr(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, %rsi
	pushq	%rsi
	pushq	%rdx
	movq	%rsi, %rdi
	movq	$2, %rsi
	callq	_oat_assert_array_length
	popq	%rdx
	popq	%rsi
	movq	%rdx, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$16, %rax
	movq	%rax, %rdx
	movq	(%rdx), %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	