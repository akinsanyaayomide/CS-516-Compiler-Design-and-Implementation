	.text
	.globl	_main
_main:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%r12
	pushq	%r13
	pushq	%r14
	pushq	%r15
	pushq	%r15
	movq	%rsp, %r11
	subq	$8, %rsp
	movq	%rdi, %r10
	movq	%r10, -8(%r11)
	movq	%rsi, %r10
	movq	%r10, 0(%r11)
	jmp	_end
	jmp	_end
	.text
end:
	movq	$9, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	