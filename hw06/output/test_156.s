	.text
	.globl	_program
_program:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	$35, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	