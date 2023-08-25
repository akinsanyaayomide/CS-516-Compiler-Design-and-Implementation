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
	subq	$-8, %rsp
	movq	$42, %rax
	movq	-8(%rbp), %rbx
	movq	-16(%rbp), %r12
	movq	-24(%rbp), %r13
	movq	-32(%rbp), %r14
	movq	-40(%rbp), %r15
	movq	%rbp, %rsp
	addq	$8, %rsp
	movq	(%rbp), %rbp
	retq	
	movq	$42, %rax
	movq	-8(%rbp), %rbx
	movq	-16(%rbp), %r12
	movq	-24(%rbp), %r13
	movq	-32(%rbp), %r14
	movq	-40(%rbp), %r15
	movq	%rbp, %rsp
	addq	$8, %rsp
	movq	(%rbp), %rbp
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
	pushq	%r15
	movq	%rsp, %r11
	subq	$-8, %rsp
	movq	$0, %rax
	movq	-8(%rbp), %rbx
	movq	-16(%rbp), %r12
	movq	-24(%rbp), %r13
	movq	-32(%rbp), %r14
	movq	-40(%rbp), %r15
	movq	%rbp, %rsp
	addq	$8, %rsp
	movq	(%rbp), %rbp
	retq	
	movq	$0, %rax
	movq	-8(%rbp), %rbx
	movq	-16(%rbp), %r12
	movq	-24(%rbp), %r13
	movq	-32(%rbp), %r14
	movq	-40(%rbp), %r15
	movq	%rbp, %rsp
	addq	$8, %rsp
	movq	(%rbp), %rbp
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
	subq	$96, %rsp
	movq	%rdi, %r10
	movq	%r10, -88(%r11)
	movq	%rsi, %r10
	movq	%r10, -80(%r11)
	subq	$8, %rsp
	movq	%rsp, 0(%r11)
	subq	$8, %rsp
	movq	%rsp, -96(%r11)
	movq	$0, %r12
	movq	0(%r11), %r10
	movq	%r10, %r13
	movq	%r12, (%r13)
	movq	$100, %r12
	movq	-96(%r11), %r10
	movq	%r10, %r13
	movq	%r12, (%r13)
	movq	-96(%r11), %r10
	movq	%r10, %r12
	movq	(%r12), %r13
	movq	%r13, -8(%r11)
	movq	-8(%r11), %r10
	movq	%r10, %r12
	movq	$0, %r13
	movq	$0, -16(%r11)
	cmpq	%r13, %r12
	setne	-16(%r11)
	movq	-16(%r11), %r10
	movq	%r10, %r10
	cmpq	$1, %r10
	je	_then
	jmp	_else
	movq	-16(%r11), %r10
	movq	%r10, %r10
	cmpq	$1, %r10
	je	_then
	jmp	_else
	.text
_then:
	pushq	%r11
	leaq	_foo(%rip)
	callq	*%r10
	popq	%r11
	movq	%rax, -24(%r11)
	movq	-24(%r11), %r10
	movq	%r10, %r12
	movq	0(%r11), %r10
	movq	%r10, %r13
	movq	%r12, (%r13)
	jmp	_end
	.text
_else:
	pushq	%r11
	leaq	_bar(%rip)
	callq	*%r10
	popq	%r11
	movq	%rax, -32(%r11)
	movq	-32(%r11), %r10
	movq	%r10, %r12
	movq	0(%r11), %r10
	movq	%r10, %r13
	movq	%r12, (%r13)
	jmp	_end
	.text
_end:
	movq	0(%r11), %r10
	movq	%r10, %r12
	movq	(%r12), %r13
	movq	%r13, -40(%r11)
	movq	-40(%r11), %r10
	movq	%r10, %rax
	movq	-8(%rbp), %rbx
	movq	-16(%rbp), %r12
	movq	-24(%rbp), %r13
	movq	-32(%rbp), %r14
	movq	-40(%rbp), %r15
	movq	%rbp, %rsp
	addq	$8, %rsp
	movq	(%rbp), %rbp
	retq	