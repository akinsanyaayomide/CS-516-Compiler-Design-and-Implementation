	.text
	.globl	_main
_main:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$128, %rsp
	movq	%rdi, %r9 
	movq	%r9 , -8(%rbp)
	movq	%rsi, %r9 
	movq	%r9 , -16(%rbp)
	subq	$8, %rsp
	movq	%rsp, -24(%rbp)
	subq	$8, %rsp
	movq	%rsp, -32(%rbp)
	movq	$1760, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$2740, %rax
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
	jmp	modulo
	.text
modulo:
	movq	-24(%rbp), %r12
	movq	(%r12), %r13
	movq	%r13, -72(%rbp)
	movq	-32(%rbp), %r12
	movq	(%r12), %r13
	movq	%r13, -80(%rbp)
	movq	-80(%rbp), %r12
	movq	-72(%rbp), %r13
	cmpq	%r13, %r12
	setg	-88(%rbp)
	andq	$1, -88(%rbp)
	movq	-88(%rbp), %rcx
	cmpq	$0, %rcx
	jne	swap
	jmp	mod_cont
	.text
mod_cont:
	movq	-72(%rbp), %r9 
	movq	-80(%rbp), %rcx
	subq	%rcx, %r9 
	movq	%r9 , -96(%rbp)
	movq	-96(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	modulo
	.text
swap:
	movq	-72(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-80(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	gcd
	.text
exit:
	movq	-24(%rbp), %r12
	movq	(%r12), %r13
	movq	%r13, -128(%rbp)
	movq	-128(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	