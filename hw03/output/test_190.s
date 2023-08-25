	.text
	.globl	_main
_main:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$24, %rsp
	movq	%rdi, %r9 
	movq	%r9 , -8(%rbp)
	movq	%rsi, %r9 
	movq	%r9 , -16(%rbp)
	movq	$3, %r12
	movq	$0, %r13
	cmpq	%r13, %r12
	setl	-24(%rbp)
	andq	$1, -24(%rbp)
	movq	-24(%rbp), %rcx
	cmpq	$0, %rcx
	jne	_then
	jmp	_else
	.text
then:
	movq	$7, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
else:
	movq	$9, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	