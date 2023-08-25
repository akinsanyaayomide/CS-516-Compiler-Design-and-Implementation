	.text
	.globl	_foo
_foo:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	$42, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	_bar
_bar:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	$0, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	_main
_main:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rsp, %rdx
	subq	$8, %rsp
	movq	%rsp, %rsi
	movq	$0, %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	movq	$100, %rax
	movq	%rsi, %rcx
	movq	%rax, (%rcx)
	movq	(%rsi), %rsi
	cmpq	$0, %rsi
	setne	%sil
	andq	$1, %rsi
	cmpq	$0, %rsi
	jne	_then
	jmp	_else
	.text
_else:
	pushq	%rdx
	callq	_bar
	popq	%rdx
	movq	%rax, %rsi
	movq	%rsi, (%rdx)
	jmp	_end
	.text
_end:
	movq	(%rdx), %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then:
	pushq	%rdx
	callq	_foo
	popq	%rdx
	movq	%rax, %rsi
	movq	%rsi, (%rdx)
	jmp	_end