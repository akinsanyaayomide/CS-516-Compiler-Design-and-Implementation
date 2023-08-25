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
	subq	$136, %rsp
	movq	%rdi, %r10
	movq	%r10, -136(%r11)
	movq	%rsi, %r10
	movq	%r10, -128(%r11)
	subq	$8, %rsp
	movq	%rsp, 0(%r11)
	subq	$8, %rsp
	movq	%rsp, -32(%r11)
	movq	$8, %r12
	movq	0(%r11), %r10
	movq	0(%r11), %r13
	movq	%r12, (%r13)
	movq	$10, %r12
	movq	-32(%r11), %r10
	movq	-32(%r11), %r13
	movq	%r12, (%r13)
	jmp	_gcd
	jmp	_gcd
	.text
_gcd:
	movq	0(%r11), %r10
	movq	0(%r11), %r12
	movq	(%r12), %r13
	movq	%r13, -40(%r11)
	movq	$0, %r12
	movq	-40(%r11), %r10
	movq	-40(%r11), %r13
	movq	$0, -48(%r11)
	cmpq	%r13, %r12
	sete	-48(%r11)
	movq	-48(%r11), %r10
	movq	-48(%r11), %rcx
	cmpq	$1, %rcx
	jge	_ret_b
	jmp	_loop
	.text
_loop:
	movq	-32(%r11), %r10
	movq	-32(%r11), %r12
	movq	(%r12), %r13
	movq	%r13, -56(%r11)
	movq	$0, %r12
	movq	-56(%r11), %r10
	movq	-56(%r11), %r13
	movq	$0, -64(%r11)
	cmpq	%r13, %r12
	sete	-64(%r11)
	movq	-64(%r11), %r10
	movq	-64(%r11), %rcx
	cmpq	$1, %rcx
	jge	_ret_a
	jmp	_continue_loop
	.text
_continue_loop:
	movq	0(%r11), %r10
	movq	0(%r11), %r12
	movq	(%r12), %r13
	movq	%r13, -72(%r11)
	movq	-72(%r11), %r10
	movq	-72(%r11), %r12
	movq	-56(%r11), %r10
	movq	-56(%r11), %r13
	movq	$0, -80(%r11)
	cmpq	%r13, %r12
	setg	-80(%r11)
	movq	-80(%r11), %r10
	movq	-80(%r11), %rcx
	cmpq	$1, %rcx
	jge	_if
	jmp	_else
	.text
_if:
	movq	-72(%r11), %r10
	movq	-72(%r11), %r12
	movq	-56(%r11), %r10
	movq	-56(%r11), %r13
	subq	%r13, %r12
	movq	%r12, -88(%r11)
	movq	-88(%r11), %r10
	movq	-88(%r11), %r12
	movq	0(%r11), %r10
	movq	0(%r11), %r13
	movq	%r12, (%r13)
	jmp	_loop
	.text
_else:
	movq	-56(%r11), %r10
	movq	-56(%r11), %r12
	movq	-72(%r11), %r10
	movq	-72(%r11), %r13
	subq	%r13, %r12
	movq	%r12, -8(%r11)
	movq	-8(%r11), %r10
	movq	-8(%r11), %r12
	movq	-32(%r11), %r10
	movq	-32(%r11), %r13
	movq	%r12, (%r13)
	jmp	_loop
	.text
_ret_a:
	movq	0(%r11), %r10
	movq	0(%r11), %r12
	movq	(%r12), %r13
	movq	%r13, -16(%r11)
	movq	-16(%r11), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_ret_b:
	movq	-32(%r11), %r10
	movq	-32(%r11), %r12
	movq	(%r12), %r13
	movq	%r13, -24(%r11)
	movq	-24(%r11), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	