	.text
	.globl	_naive_mod
_naive_mod:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rsp, %rdx
	movq	$0, %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	jmp	_start
	.text
_final:
	movq	(%rdx), %rdx
	subq	%rsi, %rdx
	movq	%rdi, %rax
	subq	%rdx, %rax
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_start:
	movq	(%rdx), %r8 
	addq	%rsi, %r8 
	movq	%r8 , (%rdx)
	cmpq	%rdi, %r8 
	setg	%r8b
	andq	$1, %r8 
	cmpq	$0, %r8 
	jne	_final
	jmp	_start
	.text
	.globl	_naive_prime
_naive_prime:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	subq	$8, %rsp
	movq	%rsp, %rdx
	movq	$2, %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	jmp	_loop
	.text
_final_false:
	movq	$0, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_final_true:
	movq	$1, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_inc:
	movq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	addq	$1, %rsi
	movq	%rsi, (%rdx)
	pushq	%rdi
	pushq	%rdx
	movq	-8(%rbp), %rsi
	callq	_naive_mod
	popq	%rdx
	popq	%rdi
	movq	%rax, %rsi
	movq	$0, %rax
	cmpq	%rsi, %rax
	sete	%sil
	andq	$1, %rsi
	cmpq	$0, %rsi
	jne	_final_false
	jmp	_loop
	.text
_loop:
	movq	(%rdx), %rsi
	movq	%rsi, %r8 
	imulq	%rsi, %r8 
	cmpq	%rdi, %r8 
	setg	%r8b
	andq	$1, %r8 
	cmpq	$0, %r8 
	jne	_final_true
	jmp	_inc
	.text
	.globl	_main
_main:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	$100, %rdi
	callq	_naive_prime
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	