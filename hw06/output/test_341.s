	.text
	.globl	_program
_program:
	pushq	%rbp
	movq	%rsp, %rbp
	jmp	__then6383
	.text
__else6382:
	movq	$4, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
__merge6381:
	movq	$0, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
__then6383:
	movq	$9, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	