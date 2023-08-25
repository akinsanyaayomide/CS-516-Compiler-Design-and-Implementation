	.text
	.globl	_baz
_baz:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%r12
	pushq	%r13
	pushq	%r14
	pushq	%r15
	movq	%rsp, %r11
	subq	$112, %rsp
	movq	%rdi, %r10
	movq	%r10, -56(%r11)
	movq	%rsi, %r10
	movq	%r10, -64(%r11)
	movq	%rdx, %r10
	movq	%r10, -72(%r11)
	movq	%rcx, %r10
	movq	%r10, -80(%r11)
	movq	%r8 , %r10
	movq	%r10, -88(%r11)
	movq	%r9 , %r10
	movq	%r10, -96(%r11)
	movq	16(%rbp), %r10
	movq	%r10, -104(%r11)
	movq	24(%rbp), %r10
	movq	%r10, -112(%r11)
	movq	-56(%r11), %r10
	movq	-56(%r11), %r12
	movq	-64(%r11), %r10
	movq	-64(%r11), %r13
	addq	%r12, %r13
	movq	%r13, 0(%r11)
	movq	0(%r11), %r10
	movq	0(%r11), %r12
	movq	-72(%r11), %r10
	movq	-72(%r11), %r13
	addq	%r12, %r13
	movq	%r13, -8(%r11)
	movq	-8(%r11), %r10
	movq	-8(%r11), %r12
	movq	-80(%r11), %r10
	movq	-80(%r11), %r13
	addq	%r12, %r13
	movq	%r13, -16(%r11)
	movq	-16(%r11), %r10
	movq	-16(%r11), %r12
	movq	-88(%r11), %r10
	movq	-88(%r11), %r13
	addq	%r12, %r13
	movq	%r13, -24(%r11)
	movq	-24(%r11), %r10
	movq	-24(%r11), %r12
	movq	-96(%r11), %r10
	movq	-96(%r11), %r13
	addq	%r12, %r13
	movq	%r13, -32(%r11)
	movq	-32(%r11), %r10
	movq	-32(%r11), %r12
	movq	-104(%r11), %r10
	movq	-104(%r11), %r13
	addq	%r12, %r13
	movq	%r13, -40(%r11)
	movq	-40(%r11), %r10
	movq	-40(%r11), %r12
	movq	-112(%r11), %r10
	movq	-112(%r11), %r13
	addq	%r12, %r13
	movq	%r13, -48(%r11)
	movq	-48(%r11), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	movq	-48(%r11), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	_bar
_bar:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%r12
	pushq	%r13
	pushq	%r14
	pushq	%r15
	movq	%rsp, %r11
	subq	$128, %rsp
	movq	%rdi, %r10
	movq	%r10, -72(%r11)
	movq	%rsi, %r10
	movq	%r10, -80(%r11)
	movq	%rdx, %r10
	movq	%r10, -88(%r11)
	movq	%rcx, %r10
	movq	%r10, -96(%r11)
	movq	%r8 , %r10
	movq	%r10, -104(%r11)
	movq	%r9 , %r10
	movq	%r10, -112(%r11)
	movq	16(%rbp), %r10
	movq	%r10, -120(%r11)
	movq	24(%rbp), %r10
	movq	%r10, -128(%r11)
	movq	-72(%r11), %r10
	movq	-72(%r11), %r12
	movq	-80(%r11), %r10
	movq	-80(%r11), %r13
	addq	%r12, %r13
	movq	%r13, 0(%r11)
	movq	0(%r11), %r10
	movq	0(%r11), %r12
	movq	-88(%r11), %r10
	movq	-88(%r11), %r13
	addq	%r12, %r13
	movq	%r13, -8(%r11)
	movq	-8(%r11), %r10
	movq	-8(%r11), %r12
	movq	-96(%r11), %r10
	movq	-96(%r11), %r13
	addq	%r12, %r13
	movq	%r13, -16(%r11)
	movq	-16(%r11), %r10
	movq	-16(%r11), %r12
	movq	-104(%r11), %r10
	movq	-104(%r11), %r13
	addq	%r12, %r13
	movq	%r13, -24(%r11)
	pushq	%r11
	subq	$16, %rsp
	movq	0(%r11), %r10
	movq	0(%r11), %rdi
	movq	-8(%r11), %r10
	movq	-8(%r11), %rsi
	movq	-16(%r11), %r10
	movq	-16(%r11), %rdx
	movq	-24(%r11), %r10
	movq	-24(%r11), %rcx
	movq	-104(%r11), %r10
	movq	-104(%r11), %r8 
	movq	-112(%r11), %r10
	movq	-112(%r11), %r9 
	movq	-120(%r11), %r10
	movq	-120(%r11), 0(%rsp)
	movq	-128(%r11), %r10
	movq	-128(%r11), 8(%rsp)
	leaq	_baz(%rip), %r10
	callq	*%r10
	addq	$16, %rsp
	popq	%r11
	movq	%rax, -64(%r11)
	movq	-24(%r11), %r10
	movq	-24(%r11), %r12
	movq	-112(%r11), %r10
	movq	-112(%r11), %r13
	addq	%r12, %r13
	movq	%r13, -32(%r11)
	movq	-32(%r11), %r10
	movq	-32(%r11), %r12
	movq	-120(%r11), %r10
	movq	-120(%r11), %r13
	addq	%r12, %r13
	movq	%r13, -40(%r11)
	movq	-40(%r11), %r10
	movq	-40(%r11), %r12
	movq	-128(%r11), %r10
	movq	-128(%r11), %r13
	addq	%r12, %r13
	movq	%r13, -48(%r11)
	movq	-48(%r11), %r10
	movq	-48(%r11), %r12
	movq	-64(%r11), %r10
	movq	-64(%r11), %r13
	addq	%r12, %r13
	movq	%r13, -56(%r11)
	movq	-56(%r11), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	movq	-56(%r11), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	_foo
_foo:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%r12
	pushq	%r13
	pushq	%r14
	pushq	%r15
	movq	%rsp, %r11
	subq	$8, %rsp
	movq	%rdi, %r10
	movq	%r10, -8(%r11)
	pushq	%r11
	subq	$16, %rsp
	movq	-8(%r11), %r10
	movq	-8(%r11), %rdi
	movq	-8(%r11), %r10
	movq	-8(%r11), %rsi
	movq	-8(%r11), %r10
	movq	-8(%r11), %rdx
	movq	-8(%r11), %r10
	movq	-8(%r11), %rcx
	movq	-8(%r11), %r10
	movq	-8(%r11), %r8 
	movq	-8(%r11), %r10
	movq	-8(%r11), %r9 
	movq	-8(%r11), %r10
	movq	-8(%r11), 0(%rsp)
	movq	-8(%r11), %r10
	movq	-8(%r11), 8(%rsp)
	leaq	_bar(%rip), %r10
	callq	*%r10
	addq	$16, %rsp
	popq	%r11
	movq	%rax, 0(%r11)
	movq	0(%r11), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	movq	0(%r11), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	_main
_main:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%r12
	pushq	%r13
	pushq	%r14
	pushq	%r15
	movq	%rsp, %r11
	subq	$16, %rsp
	movq	%rdi, %r10
	movq	%r10, -16(%r11)
	movq	%rsi, %r10
	movq	%r10, -8(%r11)
	pushq	%r11
	movq	$1, %rdi
	leaq	_foo(%rip), %r10
	callq	*%r10
	popq	%r11
	movq	%rax, 0(%r11)
	movq	0(%r11), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	movq	0(%r11), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	