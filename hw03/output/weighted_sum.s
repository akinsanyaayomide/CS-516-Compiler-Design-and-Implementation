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
	movq	%r10, -16(%r11)
	pushq	%r11
	subq	$16, %rsp
	movq	$1, %rdi
	movq	$2, %rsi
	movq	$3, %rdx
	movq	$4, %rcx
	movq	$5, %r8 
	movq	$6, %r9 
	movq	$7, 0(%rsp)
	movq	$8, 8(%rsp)
	leaq	_ll_weighted_sum(%rip), %r10
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