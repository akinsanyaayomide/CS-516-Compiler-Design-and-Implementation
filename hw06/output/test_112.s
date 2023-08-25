	.text
	.globl	_fibR
_fibR:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rsp, %rdx
	movq	%rdi, (%rdx)
	movq	(%rdx), %rsi
	cmpq	$0, %rsi
	sete	%sil
	andq	$1, %rsi
	cmpq	$0, %rsi
	jne	__then4057
	jmp	__else4056
	.text
__else4056:
	jmp	__merge4055
	.text
__else4061:
	jmp	__merge4060
	.text
__merge4055:
	movq	(%rdx), %rsi
	cmpq	$1, %rsi
	sete	%sil
	andq	$1, %rsi
	cmpq	$0, %rsi
	jne	__then4062
	jmp	__else4061
	.text
__merge4060:
	movq	(%rdx), %rsi
	subq	$1, %rsi
	pushq	%rdx
	movq	%rsi, %rdi
	callq	_fibR
	popq	%rdx
	movq	%rax, %rsi
	movq	(%rdx), %rdx
	subq	$2, %rdx
	pushq	%rsi
	movq	%rdx, %rdi
	callq	_fibR
	popq	%rsi
	movq	%rax, %rdx
	addq	%rsi, %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
__then4057:
	movq	$0, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
__then4062:
	movq	$1, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	_fibI
_fibI:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rsp, %rdx
	subq	$8, %rsp
	movq	%rsp, %rsi
	subq	$8, %rsp
	movq	%rsp, %r8 
	subq	$8, %rsp
	movq	%rsp, %r9 
	movq	%rdi, (%rdx)
	movq	$0, %rax
	movq	%rsi, %rcx
	movq	%rax, (%rcx)
	movq	$1, %rax
	movq	%r8 , %rcx
	movq	%rax, (%rcx)
	movq	(%rdx), %rdi
	cmpq	$0, %rdi
	sete	%dil
	andq	$1, %rdi
	cmpq	$0, %rdi
	jne	__then4022
	jmp	__else4021
	.text
__body4033:
	movq	(%r8 ), %rdi
	movq	%rdi, (%r9 )
	movq	(%r8 ), %rdi
	movq	(%rsi), %r10
	addq	%r10, %rdi
	movq	%rdi, (%r8 )
	movq	(%r9 ), %rdi
	movq	%rdi, (%rsi)
	movq	(%rdx), %rdi
	subq	$1, %rdi
	movq	%rdi, (%rdx)
	jmp	__cond4034
	.text
__cond4034:
	movq	(%rdx), %rdi
	subq	$2, %rdi
	cmpq	$0, %rdi
	setg	%dil
	andq	$1, %rdi
	cmpq	$0, %rdi
	jne	__body4033
	jmp	__post4032
	.text
__else4021:
	jmp	__merge4020
	.text
__else4027:
	jmp	__merge4026
	.text
__merge4020:
	movq	(%rdx), %rdi
	cmpq	$1, %rdi
	sete	%dil
	andq	$1, %rdi
	cmpq	$0, %rdi
	jne	__then4028
	jmp	__else4027
	.text
__merge4026:
	jmp	__cond4034
	.text
__post4032:
	movq	(%rsi), %rdx
	movq	(%r8 ), %rsi
	addq	%rsi, %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
__then4022:
	movq	(%rsi), %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
__then4028:
	movq	(%r8 ), %rdx
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
	movq	$1, %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	pushq	%rdx
	movq	$12, %rdi
	callq	_fibR
	popq	%rdx
	movq	%rax, %rsi
	cmpq	$144, %rsi
	sete	%sil
	andq	$1, %rsi
	pushq	%rsi
	pushq	%rdx
	movq	$12, %rdi
	callq	_fibI
	popq	%rdx
	popq	%rsi
	movq	%rax, %rdi
	cmpq	$144, %rdi
	sete	%dil
	andq	$1, %rdi
	andq	%rdi, %rsi
	cmpq	$0, %rsi
	jne	__then4008
	jmp	__else4007
	.text
__else4007:
	jmp	__merge4006
	.text
__merge4006:
	movq	(%rdx), %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
__then4008:
	movq	$0, %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	jmp	__merge4006