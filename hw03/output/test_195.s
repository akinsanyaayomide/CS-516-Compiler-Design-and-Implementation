	.text
	.globl	_main
_main:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$24, %rsp
	movq	%rdi, %r9 
	movq	%r9 , -8(%rbp)
	movq	%rsi, %r9 
	movq	%r9 , -16(%rbp)
	movq	$5, %r9 
	movq	$12, %rcx
	addq	%rcx, %r9 
	movq	%r9 , -24(%rbp)
	jmp	_next
	.text
next:
	jmp	_end
	.text
end:
	movq	-24(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	