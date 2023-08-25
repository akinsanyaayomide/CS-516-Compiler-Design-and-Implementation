	.text
	.globl	_main
_main:
	pushq	%rbp
	movq	%rsp, %rbp
	jmp	_next
	.text
_end:
	movq	$17, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_next:
	jmp	_end