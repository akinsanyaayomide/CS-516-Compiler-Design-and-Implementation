	.data
	.globl	__str_arr6324
__str_arr6324:
	.asciz	"hello!"
	.text
	.globl	_program
_program:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	$15, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	