	.text
	.globl	_foo
_foo:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$0, %rsp
	movq	$42, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	_bar
_bar:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$0, %rsp
	movq	$0, %rax
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
	movq	$0, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$100, %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-32(%rbp), %r12
	movq	(%r12), %r13
	movq	%r13, -56(%rbp)
	movq	-56(%rbp), %r12
	movq	$0, %r13
	cmpq	%r13, %r12
	setne	-64(%rbp)
	andq	$1, -64(%rbp)
	movq	-64(%rbp), %rcx
	cmpq	$0, %rcx
	jne	then
	jmp	else
	.text
then:
	callq	_foo
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_end
	.text
else:
	callq	_bar
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_end
	.text
end:
	movq	-24(%rbp), %r12
	movq	(%r12), %r13
	movq	%r13, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	