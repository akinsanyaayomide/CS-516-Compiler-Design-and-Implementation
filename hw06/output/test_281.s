	.data
	.globl	__str_arr2077
__str_arr2077:
	.asciz	"1234967890"
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
	subq	$8, %rsp
	movq	%rsp, %r8 
	leaq	__str_arr2077(%rip), %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, %r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	%r9 , %rdi
	callq	_array_of_string
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r8 
	movq	%rax, %r9 
	movq	%r9 , (%rdx)
	movq	$0, %rax
	movq	%rsi, %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	%rdi, %rcx
	movq	%rax, (%rcx)
	jmp	__cond2090
	.text
__body2089:
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
	movq	(%rdi), %r10
	movq	%r10, (%r9 )
	movq	(%rdi), %r9 
	addq	$1, %r9 
	movq	%r9 , (%rdi)
	jmp	__cond2090
	.text
__body2106:
	movq	(%rsi), %rdi
	movq	(%rdx), %r9 
	movq	(%r8 ), %r10
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
	addq	%r9 , %rdi
	movq	%rdi, (%rsi)
	movq	(%r8 ), %rdi
	addq	$1, %rdi
	movq	%rdi, (%r8 )
	jmp	__cond2107
	.text
__cond2090:
	movq	(%rdi), %r9 
	cmpq	$10, %r9 
	setl	%r9b
	andq	$1, %r9 
	cmpq	$0, %r9 
	jne	__body2089
	jmp	__post2088
	.text
__cond2107:
	movq	(%r8 ), %rdi
	cmpq	$10, %rdi
	setl	%dil
	andq	$1, %rdi
	cmpq	$0, %rdi
	jne	__body2106
	jmp	__post2105
	.text
__post2088:
	movq	$0, %rax
	movq	%r8 , %rcx
	movq	%rax, (%rcx)
	jmp	__cond2107
	.text
__post2105:
	movq	(%rsi), %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	