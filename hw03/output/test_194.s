	.text
	.globl	_main
_main:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, %r9 
	movq	%r9 , -8(%rbp)
	movq	%rsi, %r9 
	movq	%r9 , -16(%rbp)
	jmp	_end
	.text
end:
	movq	$9, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	