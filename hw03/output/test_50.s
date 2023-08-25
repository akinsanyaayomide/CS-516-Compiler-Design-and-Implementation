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
	subq	$16, %rsp
	movq	%rdi, %r10
	movq	%r10, -16(%r11)
	movq	%rsi, %r10
	movq	%r10, -8(%r11)
	movq	$5, %r12
	movq	$12, %r13
	addq	%r12, %r13
	movq	%r13, 0(%r11)
	jmp	next
	jmp	next
	.text
_next:
	jmp	end
	.text
_end:
	movq	%r10, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	