	.text
	.globl	_f
_f:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rsp, %rdx
	subq	$8, %rsp
	movq	%rsp, %rsi
	movq	%rdi, (%rdx)
	movq	$0, %rax
	movq	%rsi, %rcx
	movq	%rax, (%rcx)
	movq	(%rdx), %rdi
	cmpq	$0, %rdi
	sete	%dil
	andq	$1, %rdi
	cmpq	$0, %rdi
	jne	__then2489
	jmp	__else2488
	.text
__else2488:
	movq	(%rdx), %rdi
	movq	(%rdx), %rdx
	subq	$1, %rdx
	pushq	%rdi
	pushq	%rsi
	movq	%rdx, %rdi
	callq	_f
	popq	%rsi
	popq	%rdi
	movq	%rax, %rdx
	imulq	%rdi, %rdx
	movq	%rdx, (%rsi)
	jmp	__merge2487
	.text
__merge2487:
	movq	(%rsi), %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
__then2489:
	movq	$1, %rax
	movq	%rsi, %rcx
	movq	%rax, (%rcx)
	jmp	__merge2487
	.text
	.globl	_program
_program:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	$5, %rdi
	callq	_f
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	