	.text
	.globl	_main
_main:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	subq	$8, %rsp
	movq	%rsp, %rdx
	subq	$8, %rsp
	movq	%rsp, %rsi
	movq	$8, %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	movq	$10, %rax
	movq	%rsi, %rcx
	movq	%rax, (%rcx)
	jmp	_gcd
	.text
_continue_loop:
	movq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	cmpq	%rdi, %rax
	setg	-16(%rbp)
	andq	$1, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	_if
	jmp	_else
	.text
_else:
	subq	-8(%rbp), %rdi
	movq	%rdi, (%rsi)
	jmp	_loop
	.text
_gcd:
	movq	(%rdx), %rdi
	movq	$0, %rax
	cmpq	%rdi, %rax
	sete	%dil
	andq	$1, %rdi
	cmpq	$0, %rdi
	jne	_ret_b
	jmp	_loop
	.text
_if:
	movq	-8(%rbp), %rax
	subq	%rdi, %rax
	movq	%rax, %rdi
	movq	%rdi, (%rdx)
	jmp	_loop
	.text
_loop:
	movq	(%rsi), %rdi
	movq	$0, %rax
	cmpq	%rdi, %rax
	sete	%r8b
	andq	$1, %r8 
	cmpq	$0, %r8 
	jne	_ret_a
	jmp	_continue_loop
	.text
_ret_a:
	movq	(%rdx), %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_ret_b:
	movq	(%rsi), %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	