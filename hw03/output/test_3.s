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
	movq	%r10, -8(%r11)
	movq	%rsi, %r10
	movq	%r10, 0(%r11)
	movq	$3, %r12
	movq	$0, %r13
	movq	$0, -16(%r11)
	cmpq	%r13, %r12
	setl	-16(%r11)
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
then:
	movq	$7, %rax
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
else:
	movq	$9, %rax
	movq	-8(%rbp), %rbx
	movq	-16(%rbp), %r12
	movq	-24(%rbp), %r13
	movq	-32(%rbp), %r14
	movq	-40(%rbp), %r15
	movq	%rbp, %rsp
	addq	$8, %rsp
	movq	(%rbp), %rbp
	retq	