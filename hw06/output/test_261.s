	.data
	.globl	_i
_i:
	.quad	0
	.text
	.globl	_f
_f:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rsp, %rdx
	subq	$8, %rsp
	movq	%rsp, %r8 
	subq	$8, %rsp
	movq	%rsp, %r9 
	movq	%rdi, (%rdx)
	movq	%rsi, (%r8 )
	movq	$0, %rax
	movq	%r9 , %rcx
	movq	%rax, (%rcx)
	movq	(%rdx), %rsi
	cmpq	$1, %rsi
	setge	%sil
	andq	$1, %rsi
	cmpq	$0, %rsi
	jne	__then744
	jmp	__else743
	.text
__else743:
	movq	(%rdx), %rdx
	movq	(%r8 ), %rsi
	addq	%rsi, %rdx
	movq	%rdx, (%r9 )
	jmp	__merge742
	.text
__merge742:
	movq	(%r9 ), %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
__then744:
	movq	(%r8 ), %rsi
	movq	(%rdx), %rdx
	subq	$1, %rdx
	pushq	%r9 
	pushq	%rsi
	movq	%rdx, %rdi
	callq	_f
	popq	%rsi
	popq	%r9 
	movq	%rax, %rdx
	addq	$1, %rdx
	movq	%rdx, (%r9 )
	jmp	__merge742
	.text
	.globl	_program
_program:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rsp, %rdx
	subq	$8, %rsp
	movq	%rsp, %rsi
	movq	$3, %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	movq	$3, %rax
	movq	%rsi, %rcx
	movq	%rax, (%rcx)
	movq	(%rsi), %rsi
	movq	(%rdx), %rdx
	pushq	%rsi
	movq	%rdx, %rdi
	callq	_f
	popq	%rsi
	movq	%rax, %rdx
	leaq	_i(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	addq	%rsi, %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	