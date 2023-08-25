	.data
	.globl	_str
_str:
	.quad	__str1895
	.data
	.globl	__str1895
__str1895:
	.asciz	"hello"
	.text
	.globl	_program
_program:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rsp, %rdx
	subq	$8, %rsp
	movq	%rsp, %rsi
	subq	$8, %rsp
	movq	%rsp, %rdi
	leaq	_str(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	%r8 , %rdi
	callq	_array_of_string
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax, %r8 
	movq	%r8 , (%rdx)
	movq	$0, %rax
	movq	%rsi, %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	%rdi, %rcx
	movq	%rax, (%rcx)
	jmp	__cond1879
	.text
__body1878:
	movq	(%rsi), %r8 
	movq	(%rdx), %r9 
	movq	(%rdi), %r10
	movq	%r9 , %rax
	movq	%rax, %r11
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	%r10, %rsi
	movq	%r11, %rdi
	callq	_oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	%r9 , %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	%r10, %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %r9 
	movq	(%r9 ), %r9 
	addq	%r9 , %r8 
	movq	%r8 , (%rsi)
	movq	(%rdi), %r8 
	addq	$1, %r8 
	movq	%r8 , (%rdi)
	jmp	__cond1879
	.text
__cond1879:
	movq	(%rdi), %r8 
	cmpq	$5, %r8 
	setl	%r8b
	andq	$1, %r8 
	cmpq	$0, %r8 
	jne	__body1878
	jmp	__post1877
	.text
__post1877:
	movq	(%rsi), %rdx
	pushq	%rsi
	pushq	%rdx
	movq	%rdx, %rdi
	callq	_print_int
	popq	%rdx
	popq	%rsi
	movq	(%rsi), %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	