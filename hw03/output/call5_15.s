	.text
	.globl	_bar
_bar:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$120, %rsp
	movq	%rdi, %r9 
	movq	%r9 , -8(%rbp)
	movq	%rsi, %r9 
	movq	%r9 , -16(%rbp)
	movq	%rdx, %r9 
	movq	%r9 , -24(%rbp)
	movq	%rcx, %r9 
	movq	%r9 , -32(%rbp)
	movq	%r8 , %r9 
	movq	%r9 , -40(%rbp)
	movq	%r9 , %r9 
	movq	%r9 , -48(%rbp)
	movq	16(%rbp), %r9 
	movq	%r9 , -56(%rbp)
	movq	24(%rbp), %r9 
	movq	%r9 , -64(%rbp)
	movq	-8(%rbp), %r9 
	movq	-16(%rbp), %rcx
	addq	%rcx, %r9 
	movq	%r9 , -72(%rbp)
	movq	-72(%rbp), %r9 
	movq	-24(%rbp), %rcx
	addq	%rcx, %r9 
	movq	%r9 , -80(%rbp)
	movq	-80(%rbp), %r9 
	movq	-32(%rbp), %rcx
	addq	%rcx, %r9 
	movq	%r9 , -88(%rbp)
	movq	-88(%rbp), %r9 
	movq	-40(%rbp), %rcx
	addq	%rcx, %r9 
	movq	%r9 , -96(%rbp)
	movq	-96(%rbp), %r9 
	movq	-48(%rbp), %rcx
	addq	%rcx, %r9 
	movq	%r9 , -104(%rbp)
	movq	-104(%rbp), %r9 
	movq	-56(%rbp), %rcx
	addq	%rcx, %r9 
	movq	%r9 , -112(%rbp)
	movq	-112(%rbp), %r9 
	movq	-64(%rbp), %rcx
	addq	%rcx, %r9 
	movq	%r9 , -120(%rbp)
	movq	-120(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	_foo
_foo:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, %r9 
	movq	%r9 , -8(%rbp)
	movq	-8(%rbp), %r9 
	movq	%r9 , %rdi
	movq	-8(%rbp), %r9 
	movq	%r9 , %rsi
	movq	-8(%rbp), %r9 
	movq	%r9 , %rdx
	movq	-8(%rbp), %r9 
	movq	%r9 , %rcx
	movq	-8(%rbp), %r9 
	movq	%r9 , %r8 
	movq	-8(%rbp), %r9 
	movq	%r9 , %r9 
	movq	-8(%rbp), %r9 
	pushq	%r9 
	movq	-8(%rbp), %r9 
	pushq	%r9 
	callq	_bar
	addq	$16, %rsp
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
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
	movq	$3, %r9 
	movq	%r9 , %rdi
	callq	_foo
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	