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
	movq	-32(%r11), %r12
	movq	$0, %r13
	cmpq	%r13, %r12
	sete	-24(%r11)
	andq	$1, -24(%r11)
	movq	-24(%r11), %r10
	movq	-24(%r11), %rcx
	cmpq	$0, %rcx
	jne	_ret1
	jmp	_recurse
	movq	-24(%r11), %r10
	movq	-24(%r11), %rcx
	cmpq	$0, %rcx
	jne	_ret1
	jmp	_recurse
	.text
_ret1:
	movq	$1, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_recurse:
	movq	-32(%r11), %r12
	movq	$1, %r13
	subq	%rcx, %r12
	movq	%r12, 0(%r11)
	movq	0(%r11), %r9 
	movq	%r9 , %rdi
	callq	_factorial
	movq	%rax, -8(%r11)
	movq	-32(%r11), %r12
	movq	-8(%r11), %r13
	imulq	%rcx, %r12
	movq	%r12, -16(%r11)
	movq	-16(%r11), %rax
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
	movq	$5, %r9 
	movq	%r9 , %rdi
	callq	_factorial
	movq	%rax, 0(%r11)
	movq	0(%r11), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	movq	0(%r11), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	