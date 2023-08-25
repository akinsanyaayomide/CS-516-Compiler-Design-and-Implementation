	.text
	.globl	_main
_main:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	$10, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	