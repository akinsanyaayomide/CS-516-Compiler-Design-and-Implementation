	.text
	.globl	_factorial
_factorial:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$120, %rsp
	movq	%rdi, %r9 
	movq	%r9 , -8(%rbp)
	subq	$8, %rsp
	movq	%rsp, -16(%rbp)
	subq	$8, %rsp
	movq	%rsp, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$1, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_start
	.text
start:
	movq	-16(%rbp), %r12
	movq	(%r12), %r13
	movq	%r13, -48(%rbp)
	movq	-48(%rbp), %r12
	movq	$0, %r13
	cmpq	%r13, %r12
	setg	-56(%rbp)
	andq	$1, -56(%rbp)
	movq	-56(%rbp), %rcx
	cmpq	$0, %rcx
	jne	then
	jmp	end
	.text
then:
	movq	-24(%rbp), %r12
	movq	(%r12), %r13
	movq	%r13, -64(%rbp)
	movq	-16(%rbp), %r12
	movq	(%r12), %r13
	movq	%r13, -72(%rbp)
	movq	-64(%rbp), %r9 
	movq	-72(%rbp), %rcx
	imulq	%rcx, %r9 
	movq	%r9 , -80(%rbp)
	movq	-80(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-16(%rbp), %r12
	movq	(%r12), %r13
	movq	%r13, -96(%rbp)
	movq	-96(%rbp), %r9 
	movq	$1, %rcx
	subq	%rcx, %r9 
	movq	%r9 , -104(%rbp)
	movq	-104(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_start
	.text
end:
	movq	-24(%rbp), %r12
	movq	(%r12), %r13
	movq	%r13, -120(%rbp)
	movq	-120(%rbp), %rax
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
	movq	$5, %r9 
	movq	%r9 , %rdi
	callq	_factorial
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	