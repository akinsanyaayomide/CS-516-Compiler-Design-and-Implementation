	.text
	.globl	_program
_program:
	pushq	%rbp
	movq	%rsp, %rbp
	jmp	__then6396
	.text
__else6395:
	movq	$46, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
__merge6394:
	movq	$0, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
__then6396:
	movq	$23, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	