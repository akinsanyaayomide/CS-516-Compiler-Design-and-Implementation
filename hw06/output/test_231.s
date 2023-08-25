	.data
	.globl	_glist
_glist:
	.quad	1
	.quad	2
	.quad	3
	.quad	4
	.quad	5
	.text
	.globl	_search
_search:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$24, %rsp
	subq	$8, %rsp
	movq	%rsp, %rdx
	movq	$0, %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	jmp	_loop
	.text
_check:
	movq	%rsi, %rax
	addq	$0, %rax
	movq	%rax, %rcx
	movq	%r8 , %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	cmpq	-16(%rbp), %rdi
	sete	-24(%rbp)
	andq	$1, -24(%rbp)
	addq	$1, %r8 
	movq	%r8 , (%rdx)
	cmpq	$0, -24(%rbp)
	jne	_true
	jmp	_loop
	.text
_false:
	movq	$0, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_loop:
	movq	(%rdx), %r8 
	cmpq	$5, %r8 
	sete	%r9b
	andq	$1, %r9 
	cmpq	$0, %r9 
	jne	_false
	jmp	_check
	.text
_true:
	movq	$1, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	_main
_main:
	pushq	%rbp
	movq	%rsp, %rbp
	leaq	_glist(%rip), %rsi
	movq	$3, %rdi
	callq	_search
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	