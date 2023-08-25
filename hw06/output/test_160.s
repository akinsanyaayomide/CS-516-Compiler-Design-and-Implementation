	.text
	.globl	_program
_program:
	pushq	%rbp
	movq	%rsp, %rbp
	jmp	__then6414
	.text
__else6413:
	movq	$2, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
__merge6412:
	movq	$0, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
__then6414:
	movq	$-96, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	