	.text
	.globl	_baz
_baz:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rcx, -8(%rbp)
	addq	%rdi, %rsi
	addq	%rsi, %rdx
	addq	-8(%rbp), %rdx
	addq	%r8 , %rdx
	addq	%r9 , %rdx
	addq	16(%rbp), %rdx
	addq	24(%rbp), %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	_bar
_bar:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rcx, -8(%rbp)
	addq	%rdi, %rsi
	addq	%rsi, %rdx
	movq	%rdx, %rdi
	addq	-8(%rbp), %rdi
	movq	%rdi, %r10
	addq	%r8 , %r10
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	24(%rbp)
	pushq	16(%rbp)
	movq	%r10, %rcx
	pushq	%rdi
	movq	%rsi, %rdi
	movq	%rdx, %rsi
	popq	%rdx
	callq	_baz
	addq	$16, %rsp
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r10
	movq	%rax, %rdx
	movq	%r10, %rsi
	addq	%r9 , %rsi
	addq	16(%rbp), %rsi
	addq	24(%rbp), %rsi
	addq	%rsi, %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	_foo
_foo:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rdi
	pushq	%rdi
	pushq	%rdi
	movq	%rdi, %r9 
	movq	%rdi, %r8 
	movq	%rdi, %rcx
	movq	%rdi, %rdx
	movq	%rdi, %rsi
	callq	_bar
	addq	$16, %rsp
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
	movq	$1, %rdi
	callq	_foo
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	