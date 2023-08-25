	.text
	.globl	_modulo
_modulo:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$40, %rsp
	movq	%rdi, %r9 
	movq	%r9 , -8(%rbp)
	movq	%rsi, %r9 
	movq	%r9 , -16(%rbp)
	movq	-8(%rbp), %r9 
	movq	-16(%rbp), %rcx
	subq	%rcx, %r9 
	movq	%r9 , -24(%rbp)
	movq	-16(%rbp), %r12
	movq	-24(%rbp), %r13
	cmpq	%r13, %r12
	setg	-32(%rbp)
	andq	$1, -32(%rbp)
	movq	-32(%rbp), %rcx
	cmpq	$0, %rcx
	jne	ret1
	jmp	rec
	.text
ret1:
	movq	-24(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
rec:
	movq	-24(%rbp), %r9 
	movq	%r9 , %rdi
	movq	-16(%rbp), %r9 
	movq	%r9 , %rsi
	callq	_modulo
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	_main
_main:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$104, %rsp
	movq	%rdi, %r9 
	movq	%r9 , -8(%rbp)
	movq	%rsi, %r9 
	movq	%r9 , -16(%rbp)
	subq	$8, %rsp
	movq	%rsp, -24(%rbp)
	subq	$8, %rsp
	movq	%rsp, -32(%rbp)
	movq	$2740, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$1760, %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	gcd
	.text
gcd:
	movq	-32(%rbp), %r12
	movq	(%r12), %r13
	movq	%r13, -56(%rbp)
	movq	$0, %r12
	movq	-56(%rbp), %r13
	cmpq	%r13, %r12
	sete	-64(%rbp)
	andq	$1, -64(%rbp)
	movq	-64(%rbp), %rcx
	cmpq	$0, %rcx
	jne	exit
	jmp	mod
	.text
mod:
	movq	-24(%rbp), %r12
	movq	(%r12), %r13
	movq	%r13, -72(%rbp)
	movq	-72(%rbp), %r9 
	movq	%r9 , %rdi
	movq	-56(%rbp), %r9 
	movq	%r9 , %rsi
	callq	_modulo
	movq	%rax, -80(%rbp)
	movq	-56(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-80(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	gcd
	.text
exit:
	movq	-24(%rbp), %r12
	movq	(%r12), %r13
	movq	%r13, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	