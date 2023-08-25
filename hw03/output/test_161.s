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
	cmpq	%r13, %r12
	setl	-16(%r11)
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
then:
	movq	$7, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
else:
	movq	$9, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	