	.data
	.globl	__str_arr5385
__str_arr5385:
	.asciz	"ab"
	.text
	.globl	_run2
_run2:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rsp, %rdx
	subq	$8, %rsp
	movq	%rsp, %r8 
	movq	%rdi, (%rdx)
	movq	%rsi, (%r8 )
	movq	(%rdx), %rsi
	movq	(%r8 ), %rdi
	pushq	%r15
	movq	%rsi, %r15
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	callq	*%r15
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r15
	movq	(%rdx), %rdx
	movq	(%r8 ), %rsi
	pushq	%r15
	movq	%rdx, %r15
	pushq	%rsi
	pushq	%rdx
	movq	%rsi, %rdi
	callq	*%r15
	popq	%rdx
	popq	%rsi
	popq	%r15
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	_program
_program:
	pushq	%rbp
	movq	%rsp, %rbp
	leaq	__str_arr5385(%rip), %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, %rdx
	pushq	%rdx
	movq	%rdx, %rsi
	leaq	_print_string(%rip), %rdi
	callq	_run2
	popq	%rdx
	movq	$0, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	