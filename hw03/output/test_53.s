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
	movq	%r10, %rcx
	cmpq	$0, %rcx
	jge	then
	jmp	else
	movq	%r10, %rcx
	cmpq	$0, %rcx
	jge	then
	jmp	else
	.text
_then:
	pushq	%r11
	leaq	_foo(%rip), %r10
	callq	*%r10
	popq	%r11
	movq	%rax, -24(%r11)
	movq	-24(%r11), %r10
	movq	%r10, %r12
	movq	0(%r11), %r10
	movq	%r10, %r13
	movq	%r12, (%r13)
	jmp	end
	.text
_else:
	pushq	%r11
	leaq	_bar(%rip), %r10
	callq	*%r10
	popq	%r11
	movq	%rax, -32(%r11)
	movq	-32(%r11), %r10
	movq	%r10, %r12
	movq	0(%r11), %r10
	movq	%r10, %r13
	movq	%r12, (%r13)
	jmp	end
	.text
_end:
	movq	0(%r11), %r10
	movq	%r10, %r12
	movq	(%r12), %r13
	movq	%r13, -40(%r11)
	movq	%r10, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	