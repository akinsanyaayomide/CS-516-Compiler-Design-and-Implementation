	.text
	.globl	_power
_power:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$144, %rsp
	movq	%rdi, %r9 
	movq	%r9 , -8(%rbp)
	movq	%rsi, %r9 
	movq	%r9 , -16(%rbp)
	subq	$8, %rsp
	movq	%rsp, -24(%rbp)
	subq	$8, %rsp
	movq	%rsp, -32(%rbp)
	subq	$8, %rsp
	movq	%rsp, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$1, %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	start
	.text
start:
	movq	-24(%rbp), %r12
	movq	(%r12), %r13
	movq	%r13, -72(%rbp)
	movq	-72(%rbp), %r12
	movq	$0, %r13
	cmpq	%r13, %r12
	setg	-80(%rbp)
	andq	$1, -80(%rbp)
	movq	-80(%rbp), %rcx
	cmpq	$0, %rcx
	jne	then
	jmp	end
	.text
then:
	movq	-32(%rbp), %r12
	movq	(%r12), %r13
	movq	%r13, -88(%rbp)
	movq	-40(%rbp), %r12
	movq	(%r12), %r13
	movq	%r13, -96(%rbp)
	movq	-88(%rbp), %r9 
	movq	-96(%rbp), %rcx
	imulq	%rcx, %r9 
	movq	%r9 , -104(%rbp)
	movq	-104(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-24(%rbp), %r12
	movq	(%r12), %r13
	movq	%r13, -120(%rbp)
	movq	-120(%rbp), %r9 
	movq	$1, %rcx
	subq	%rcx, %r9 
	movq	%r9 , -128(%rbp)
	movq	-128(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	start
	.text
end:
	movq	-32(%rbp), %r12
	movq	(%r12), %r13
	movq	%r13, -144(%rbp)
	movq	-144(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	_main
_main:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$40, %rsp
	movq	%rdi, %r9 
	movq	%r9 , -8(%rbp)
	movq	%rsi, %r9 
	movq	%r9 , -16(%rbp)
	subq	$8, %rsp
	movq	%rsp, -24(%rbp)
	movq	$0, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$3, %r9 
	movq	%r9 , %rdi
	movq	$4, %r9 
	movq	%r9 , %rsi
	callq	_power
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	