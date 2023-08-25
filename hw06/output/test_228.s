	.data
	.globl	_node1
_node1:
	.quad	_node2
	.quad	_node3
	.quad	50
	.data
	.globl	_node2
_node2:
	.quad	_node4
	.quad	_node5
	.quad	25
	.data
	.globl	_node3
_node3:
	.quad	_node6
	.quad	_node7
	.quad	75
	.data
	.globl	_node4
_node4:
	.quad	_node8
	.quad	0
	.quad	10
	.data
	.globl	_node5
_node5:
	.quad	0
	.quad	0
	.quad	30
	.data
	.globl	_node6
_node6:
	.quad	0
	.quad	0
	.quad	60
	.data
	.globl	_node7
_node7:
	.quad	0
	.quad	0
	.quad	80
	.data
	.globl	_node8
_node8:
	.quad	0
	.quad	0
	.quad	1
	.text
	.globl	_contains
_contains:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, %rax
	addq	$0, %rax
	addq	$16, %rax
	movq	%rax, %rdx
	movq	(%rdx), %rdx
	cmpq	%rsi, %rdx
	sete	%r8b
	andq	$1, %r8 
	cmpq	$0, %r8 
	jne	_equal
	jmp	_notequal
	.text
_equal:
	movq	$1, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_left:
	movq	%rdi, %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, %rdx
	movq	(%rdx), %rdx
	cmpq	$0, %rdx
	sete	%dil
	andq	$1, %rdi
	cmpq	$0, %rdi
	jne	_none
	jmp	_left_next
	.text
_left_next:
	pushq	%rsi
	movq	%rdx, %rdi
	callq	_contains
	popq	%rsi
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_none:
	movq	$0, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_notequal:
	cmpq	%rsi, %rdx
	setg	%dl
	andq	$1, %rdx
	cmpq	$0, %rdx
	jne	_left
	jmp	_right
	.text
_right:
	movq	%rdi, %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rdx
	movq	(%rdx), %rdx
	cmpq	$0, %rdx
	sete	%dil
	andq	$1, %rdi
	cmpq	$0, %rdi
	jne	_none
	jmp	_right_next
	.text
_right_next:
	pushq	%rsi
	movq	%rdx, %rdi
	callq	_contains
	popq	%rsi
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	_main
_main:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$24, %rsp
	movq	$50, %rsi
	leaq	_node1(%rip), %rdi
	callq	_contains
	movq	%rax, %rdx
	pushq	%rdx
	movq	$25, %rsi
	leaq	_node1(%rip), %rdi
	callq	_contains
	popq	%rdx
	movq	%rax, %rsi
	pushq	%rsi
	pushq	%rdx
	movq	$75, %rsi
	leaq	_node1(%rip), %rdi
	callq	_contains
	popq	%rdx
	popq	%rsi
	movq	%rax, %rdi
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	$10, %rsi
	leaq	_node1(%rip), %rdi
	callq	_contains
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax, %r8 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	$30, %rsi
	leaq	_node1(%rip), %rdi
	callq	_contains
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r8 
	movq	%rax, %r9 
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	$60, %rsi
	leaq	_node1(%rip), %rdi
	callq	_contains
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	movq	%rax, %r10
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	$80, %rsi
	leaq	_node1(%rip), %rdi
	callq	_contains
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r10
	movq	%rax, %r11
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	$1, %rsi
	leaq	_node1(%rip), %rdi
	callq	_contains
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	%rax, -8(%rbp)
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	$100, %rsi
	leaq	_node1(%rip), %rdi
	callq	_contains
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	%rax, -16(%rbp)
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	$120, %rsi
	leaq	_node1(%rip), %rdi
	callq	_contains
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	%rax, -24(%rbp)
	addq	%rsi, %rdx
	movq	%rdi, %rsi
	addq	%r8 , %rsi
	movq	%r9 , %rdi
	addq	%r10, %rdi
	movq	%r11, %r8 
	addq	-8(%rbp), %r8 
	movq	-16(%rbp), %r9 
	addq	-24(%rbp), %r9 
	addq	%rsi, %rdx
	movq	%rdi, %rsi
	addq	%r8 , %rsi
	addq	%rsi, %rdx
	addq	%r9 , %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	