	.text
	.globl	_factorial
_factorial:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%r12
	pushq	%r13
	pushq	%r14
	pushq	%r15
	pushq	%r15
	movq	%rsp, %r11
	subq	$32, %rsp
	movq	%rdi, %r10
	movq	%r10, -32(%r11)
	movq	-32(%r11), %r10
	movq	%r10, %r12
	movq	$0, %r13
	movq	$0, -24(%r11)
	cmpq	%r13, %r12
	sete	-24(%r11)
	movq	%r10, %rcx
	cmpq	$0, %rcx
	jge	ret1
	jmp	recurse
	movq	%r10, %rcx
	cmpq	$0, %rcx
	jge	ret1
	jmp	recurse
	.text
_ret1:
	movq	$1, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_recurse:
	movq	-32(%r11), %r10
	movq	%r10, %r12
	movq	$1, %r13
	subq	%r13, %r12
	movq	%r12, 0(%r11)
	pushq	%r11
	movq	0(%r11), %r10
	movq	%r10, %rdi
	leaq	_factorial(%rip), %r10
	callq	*%r10
	popq	%r11
	movq	%rax, -8(%r11)
	movq	-32(%r11), %r10
	movq	%r10, %r12
	movq	-8(%r11), %r10
	movq	%r10, %r13
	imulq	%r12, %r13
	movq	%r13, -16(%r11)
	movq	%r10, %rax
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
	pushq	%r11
	movq	$5, %rdi
	leaq	_factorial(%rip), %r10
	callq	*%r10
	popq	%r11
	movq	%rax, 0(%r11)
	movq	%r10, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	movq	%r10, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	