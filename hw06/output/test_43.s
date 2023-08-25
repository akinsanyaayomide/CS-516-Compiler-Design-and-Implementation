	.data
	.globl	_test1
_test1:
	.quad	0
	.quad	0
	.quad	100
	.data
	.globl	_test2
_test2:
	.quad	_test1
	.quad	0
	.quad	10
	.data
	.globl	_test3
_test3:
	.quad	0
	.quad	0
	.quad	1
	.data
	.globl	_test
_test:
	.quad	_test2
	.quad	_test3
	.quad	5
	.text
	.globl	_sum_tree
_sum_tree:
	pushq	%rbp
	movq	%rsp, %rbp
	cmpq	$0, %rdi
	sete	%dl
	andq	$1, %rdx
	cmpq	$0, %rdx
	jne	_then
	jmp	_else
	.text
_else:
	movq	%rdi, %rax
	addq	$0, %rax
	addq	$16, %rax
	movq	%rax, %rdx
	movq	(%rdx), %rdx
	movq	%rdi, %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rsi
	movq	(%rsi), %rsi
	pushq	%rdi
	pushq	%rdx
	movq	%rsi, %rdi
	callq	_sum_tree
	popq	%rdx
	popq	%rdi
	movq	%rax, %rsi
	addq	%rsi, %rdx
	movq	%rdi, %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, %rsi
	movq	(%rsi), %rsi
	pushq	%rdx
	movq	%rsi, %rdi
	callq	_sum_tree
	popq	%rdx
	movq	%rax, %rsi
	addq	%rsi, %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then:
	movq	$0, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	_main
_main:
	pushq	%rbp
	movq	%rsp, %rbp
	leaq	_test(%rip), %rdi
	callq	_sum_tree
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	