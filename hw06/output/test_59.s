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
	jmp	__cond40
	.text
__body39:
	movq	(%rdx), %rdi
	addq	$2, %rdi
	movq	%rdi, (%rdx)
	movq	(%rsi), %rdi
	addq	$1, %rdi
	movq	%rdi, (%rsi)
	jmp	__cond40
	.text
__cond40:
	movq	(%rsi), %rdi
	cmpq	$3, %rdi
	setl	%dil
	andq	$1, %rdi
	cmpq	$0, %rdi
	jne	__body39
	jmp	__post38
	.text
__post38:
	movq	(%rdx), %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	