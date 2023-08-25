	.data
	.globl	_s
_s:
	.quad	__str6317
	.data
	.globl	__str6317
__str6317:
	.asciz	"hello!"
	.text
	.globl	_program
_program:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	$17, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	