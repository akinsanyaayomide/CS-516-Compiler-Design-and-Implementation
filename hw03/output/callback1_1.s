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
	subq	$40, %rsp
	movq	%rdi, %r10
	movq	%r10, -32(%r11)
	movq	%rsi, %r10
	movq	%r10, -40(%r11)
	subq	$8, %rsp
	movq	%rsp, 0(%r11)
	movq	-32(%r11), %r9 
	movq	-40(%r11), %rcx
	addq	%rcx, %r9 
	movq	%r9 , -8(%r11)
	movq	-8(%r11), %rax
	movq	0(%r11), %rcx
	movq	%rax, (%rcx)
	movq	0(%r11), %r12
	movq	(%r12), %r13
	movq	%r13, -16(%r11)
	movq	-16(%r11), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
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
	subq	$32, %rsp
	movq	%rdi, %r10
	movq	%r10, -24(%r11)
	movq	%rsi, %r10
	movq	%r10, -32(%r11)
	leaq	_foo(%rip), %r9 
	movq	%r9 , %rdi
	callq	_ll_callback
	movq	%rax, 0(%r11)
	movq	0(%r11), %r9 
	movq	%r9 , %rdi
	callq	_ll_ltoa
	movq	%rax, -8(%r11)
	movq	-8(%r11), %r9 
	movq	%r9 , %rdi
	callq	_ll_puts
	movq	$0, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	movq	$0, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	