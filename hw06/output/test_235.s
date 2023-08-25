	.text
	.globl	_gcd_rec
_gcd_rec:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rsp, %rdx
	movq	%rdi, (%rdx)
	cmpq	$0, %rsi
	setne	%r8b
	andq	$1, %r8 
	cmpq	$0, %r8 
	jne	_neq0
	jmp	_eq0
	.text
_eq0:
	movq	%rdi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_neq0:
	movq	(%rdx), %rdi
	subq	%rsi, %rdi
	movq	%rdi, (%rdx)
	cmpq	%rsi, %rdi
	setg	%r8b
	andq	$1, %r8 
	cmpq	$0, %r8 
	jne	_neq0
	jmp	_recurse
	.text
_recurse:
	pushq	%rdi
	pushq	%rsi
	pushq	%rdi
	movq	%rsi, %rdi
	popq	%rsi
	callq	_gcd_rec
	popq	%rsi
	popq	%rdi
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	_main
_main:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	$34, %rsi
	movq	$424, %rdi
	callq	_gcd_rec
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	