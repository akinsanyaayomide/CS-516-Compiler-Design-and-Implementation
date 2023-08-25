	.text
	.globl	_main
_main:
	pushq	%rbp
	movq	%rsp, %rbp
	jmp	_else
	.text
_else:
	movq	$9, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then:
	movq	$7, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	