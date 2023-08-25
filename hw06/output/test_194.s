	.text
	.globl	_main
_main:
	pushq	%rbp
	movq	%rsp, %rbp
	jmp	_end
	.text
_end:
	movq	$9, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	