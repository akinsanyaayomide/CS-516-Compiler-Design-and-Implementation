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
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	movq	$42, %rax
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
	pushq	%r15
	movq	%rsp, %r11
	subq	$-8, %rsp
	movq	$0, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	movq	$0, %rax
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
	subq	$96, %rsp
	movq	%rdi, %r10
	movq	%r10, -88(%r11)
	movq	%rsi, %r10
	movq	%r10, -80(%r11)
	subq	$8, %rsp
	movq	%rsp, 0(%r11)
	subq	$8, %rsp
	movq	%rsp, -96(%r11)
	movq	$0, %rax
	movq	0(%r11), %rcx
	movq	%rax, (%rcx)
	movq	$100, %rax
	movq	-96(%r11), %rcx
	movq	%rax, (%rcx)
	movq	-96(%r11), %r12
	movq	(%r12), %r13
	movq	%r13, -8(%r11)
	movq	-8(%r11), %r12
	movq	$0, %r13
	cmpq	%r13, %r12
	setne	-16(%r11)
	andq	$1, -16(%r11)
	movq	-16(%r11), %r10
	movq	-16(%r11), %rcx
	cmpq	$0, %rcx
	jne	_then
	jmp	_else
	movq	-16(%r11), %r10
	movq	-16(%r11), %rcx
	cmpq	$0, %rcx
	jne	_then
	jmp	_else
	.text
_then:
	callq	_foo
	movq	%rax, -24(%r11)
	movq	-24(%r11), %rax
	movq	0(%r11), %rcx
	movq	%rax, (%rcx)
	jmp	_end
	.text
_else:
	callq	_bar
	movq	%rax, -32(%r11)
	movq	-32(%r11), %rax
	movq	0(%r11), %rcx
	movq	%rax, (%rcx)
	jmp	_end
	.text
_end:
	movq	0(%r11), %r12
	movq	(%r12), %r13
	movq	%r13, -40(%r11)
	movq	-40(%r11), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	