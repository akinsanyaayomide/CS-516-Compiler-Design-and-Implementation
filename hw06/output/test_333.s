	.data
	.globl	_y
_y:
	.quad	1
	.text
	.globl	_program
_program:
	pushq	%rbp
	movq	%rsp, %rbp
	leaq	_y(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	cmpq	$0, %rdx
	jne	__then6297
	jmp	__else6296
	.text
__else6296:
	jmp	__merge6295
	.text
__merge6295:
	movq	$15, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
__then6297:
	movq	$17, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	