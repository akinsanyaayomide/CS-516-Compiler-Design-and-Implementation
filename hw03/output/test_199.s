	.text
	.globl	_baz
_baz:
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
	.globl	_bar
_bar:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$136, %rsp
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
	pushq	%r11
	subq	$16, %rsp
	movq	-72(%rbp), %r10
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %r10
	movq	-80(%rbp), %rsi
	movq	-88(%rbp), %r10
	movq	-88(%rbp), %rdx
	movq	-96(%rbp), %r10
	movq	-96(%rbp), %rcx
	movq	-40(%rbp), %r10
	movq	-40(%rbp), %r8 
	movq	-48(%rbp), %r10
	movq	-48(%rbp), %r9 
	movq	-56(%rbp), %r10
	movq	-56(%rbp), 0(%rsp)
	movq	-64(%rbp), %r10
	movq	-64(%rbp), 8(%rsp)
	leaq	_baz(%rip), %r10
	callq	*%r10
	addq	$16, %rsp
	popq	%r11
	movq	%rax, -104(%rbp)
	movq	-96(%rbp), %r9 
	movq	-48(%rbp), %rcx
	addq	%rcx, %r9 
	movq	%r9 , -112(%rbp)
	movq	-112(%rbp), %r9 
	movq	-56(%rbp), %rcx
	addq	%rcx, %r9 
	movq	%r9 , -120(%rbp)
	movq	-120(%rbp), %r9 
	movq	-64(%rbp), %rcx
	addq	%rcx, %r9 
	movq	%r9 , -128(%rbp)
	movq	-128(%rbp), %r9 
	movq	-104(%rbp), %rcx
	addq	%rcx, %r9 
	movq	%r9 , -136(%rbp)
	movq	-136(%rbp), %rax
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
	pushq	%r11
	subq	$16, %rsp
	movq	-8(%rbp), %r10
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %r10
	movq	-8(%rbp), %rsi
	movq	-8(%rbp), %r10
	movq	-8(%rbp), %rdx
	movq	-8(%rbp), %r10
	movq	-8(%rbp), %rcx
	movq	-8(%rbp), %r10
	movq	-8(%rbp), %r8 
	movq	-8(%rbp), %r10
	movq	-8(%rbp), %r9 
	movq	-8(%rbp), %r10
	movq	-8(%rbp), 0(%rsp)
	movq	-8(%rbp), %r10
	movq	-8(%rbp), 8(%rsp)
	leaq	_bar(%rip), %r10
	callq	*%r10
	addq	$16, %rsp
	popq	%r11
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
	pushq	%r11
	movq	$1, %rdi
	leaq	_foo(%rip), %r10
	callq	*%r10
	popq	%r11
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	