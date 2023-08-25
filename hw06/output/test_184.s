	.text
	.globl	_main
_main:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	$1, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	