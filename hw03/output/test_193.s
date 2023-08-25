	.text
	.globl	_factorial
_factorial:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$40, %rsp
	movq	%rdi, %r9 
	movq	%r9 , -8(%rbp)
	movq	-8(%rbp), %r12
	movq	$0, %r13
	cmpq	%r13, %r12
	sete	-16(%rbp)
	andq	$1, -16(%rbp)
	movq	-16(%rbp), %rcx
	cmpq	$0, %rcx
	jne	_ret1
	jmp	_recurse
	.text
ret1:
	movq	$1, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
recurse:
	movq	-8(%rbp), %r9 
	movq	$1, %rcx
	subq	%rcx, %r9 
	movq	%r9 , -24(%rbp)
	movq	-24(%rbp), %r9 
	movq	%r9 , %rdi
	callq	_factorial
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %r9 
	movq	-32(%rbp), %rcx
	imulq	%rcx, %r9 
	movq	%r9 , -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
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
	movq	$5, %r9 
	movq	%r9 , %rdi
	callq	_factorial
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	