	.text
	.globl	_gcd
_gcd:
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
	jmp	__cond4455
	.text
__body4454:
	movq	(%r8 ), %rsi
	movq	%rsi, (%r9 )
	movq	(%r8 ), %rsi
	movq	(%rdx), %rdi
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rdx
	callq	_mod
	popq	%rdx
	popq	%rdi
	popq	%r8 
	popq	%r9 
	movq	%rax, %rsi
	movq	%rsi, (%r8 )
	movq	(%r9 ), %rsi
	movq	%rsi, (%rdx)
	jmp	__cond4455
	.text
__cond4455:
	movq	(%r8 ), %rsi
	cmpq	$0, %rsi
	setne	%sil
	andq	$1, %rsi
	cmpq	$0, %rsi
	jne	__body4454
	jmp	__post4453
	.text
__post4453:
	movq	(%rdx), %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	_mod
_mod:
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
	movq	(%rdx), %rdx
	movq	%rdx, (%r9 )
	jmp	__cond4439
	.text
__body4438:
	movq	(%r9 ), %rdx
	movq	(%r8 ), %rsi
	subq	%rsi, %rdx
	movq	%rdx, (%r9 )
	jmp	__cond4439
	.text
__cond4439:
	movq	(%r9 ), %rdx
	movq	(%r8 ), %rsi
	subq	%rsi, %rdx
	cmpq	$0, %rdx
	setge	%dl
	andq	$1, %rdx
	cmpq	$0, %rdx
	jne	__body4438
	jmp	__post4437
	.text
__post4437:
	movq	(%r9 ), %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	_program
_program:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rsp, %rdx
	subq	$8, %rsp
	movq	%rsp, %rsi
	movq	$64, %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	movq	$48, %rax
	movq	%rsi, %rcx
	movq	%rax, (%rcx)
	movq	(%rsi), %rsi
	movq	(%rdx), %rdx
	pushq	%rsi
	movq	%rdx, %rdi
	callq	_gcd
	popq	%rsi
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	