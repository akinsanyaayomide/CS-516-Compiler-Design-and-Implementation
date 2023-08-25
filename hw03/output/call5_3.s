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
	movq	-56(%r11), %r9 
	movq	-64(%r11), %rcx
	addq	%rcx, %r9 
	movq	%r9 , 0(%r11)
	movq	0(%r11), %r9 
	movq	-72(%r11), %rcx
	addq	%rcx, %r9 
	movq	%r9 , -8(%r11)
	movq	-8(%r11), %r9 
	movq	-80(%r11), %rcx
	addq	%rcx, %r9 
	movq	%r9 , -16(%r11)
	movq	-16(%r11), %r9 
	movq	-88(%r11), %rcx
	addq	%rcx, %r9 
	movq	%r9 , -24(%r11)
	movq	-24(%r11), %r9 
	movq	-96(%r11), %rcx
	addq	%rcx, %r9 
	movq	%r9 , -32(%r11)
	movq	-32(%r11), %r9 
	movq	-104(%r11), %rcx
	addq	%rcx, %r9 
	movq	%r9 , -40(%r11)
	movq	-40(%r11), %r9 
	movq	-112(%r11), %rcx
	addq	%rcx, %r9 
	movq	%r9 , -48(%r11)
	movq	-48(%r11), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	movq	-48(%r11), %rax
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
	pushq	%r15
	movq	%rsp, %r11
	subq	$8, %rsp
	movq	%rdi, %r10
	movq	%r10, -8(%r11)
	movq	-8(%r11), %r9 
	movq	%r9 , %rdi
	movq	-8(%r11), %r9 
	movq	%r9 , %rsi
	movq	-8(%r11), %r9 
	movq	%r9 , %rdx
	movq	-8(%r11), %r9 
	movq	%r9 , %rcx
	movq	-8(%r11), %r9 
	movq	%r9 , %r8 
	movq	-8(%r11), %r9 
	movq	%r9 , %r9 
	movq	-8(%r11), %r9 
	pushq	%r9 
	movq	-8(%r11), %r9 
	pushq	%r9 
	callq	_bar
	addq	$16, %rsp
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
	pushq	%r15
	movq	%rsp, %r11
	subq	$16, %rsp
	movq	%rdi, %r10
	movq	%r10, -16(%r11)
	movq	%rsi, %r10
	movq	%r10, -8(%r11)
	movq	$3, %r9 
	movq	%r9 , %rdi
	callq	_foo
	movq	%rax, 0(%r11)
	movq	0(%r11), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	movq	0(%r11), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	