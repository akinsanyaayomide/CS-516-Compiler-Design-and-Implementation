	.data
	.globl	_s
_s:
	.quad	__str588
	.data
	.globl	__str588
__str588:
	.asciz	"341"
	.text
	.globl	_program
_program:
	pushq	%rbp
	movq	%rsp, %rbp
	leaq	_s(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	pushq	%rdx
	movq	%rdx, %rdi
	callq	_print_string
	popq	%rdx
	movq	$0, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	