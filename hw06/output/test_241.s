	.text
	.globl	_program
_program:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rsp, %rdx
	subq	$8, %rsp
	movq	%rsp, %rsi
	movq	$0, %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	%rsi, %rcx
	movq	%rax, (%rcx)
	jmp	__cond15
	.text
__body14:
	movq	(%rdx), %rdi
	movq	(%rsi), %r8 
	addq	%r8 , %rdi
	movq	(%rsi), %r8 
	imulq	%r8 , %rdi
	movq	%rdi, (%rdx)
	movq	(%rsi), %rdi
	addq	$1, %rdi
	movq	%rdi, (%rsi)
	jmp	__cond15
	.text
__cond15:
	movq	(%rsi), %rdi
	cmpq	$10, %rdi
	setl	%dil
	andq	$1, %rdi
	cmpq	$0, %rdi
	jne	__body14
	jmp	__post13
	.text
__post13:
	movq	(%rdx), %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	