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
	movq	$5, %r9 
	movq	$12, %rcx
	addq	%rcx, %r9 
	movq	%r9 , 0(%r11)
	jmp	_next
	jmp	_next
	.text
next:
	jmp	_end
	.text
end:
	movq	0(%r11), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	