	.data
	.globl	__str_arr3650
__str_arr3650:
	.asciz	"Correct!"
	.text
	.globl	_euclid_division
_euclid_division:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rsp, %rdx
	subq	$8, %rsp
	movq	%rsp, %r8 
	subq	$8, %rsp
	movq	%rsp, %r9 
	subq	$8, %rsp
	movq	%rsp, %r10
	movq	%rdi, (%rdx)
	movq	%rsi, (%r8 )
	movq	(%r8 ), %rsi
	cmpq	$0, %rsi
	setl	%sil
	andq	$1, %rsi
	cmpq	$0, %rsi
	jne	__then3729
	jmp	__else3728
	.text
__body3744:
	movq	(%r9 ), %rdx
	addq	$1, %rdx
	movq	%rdx, (%r9 )
	movq	(%r10), %rdx
	movq	(%r8 ), %rsi
	subq	%rsi, %rdx
	movq	%rdx, (%r10)
	jmp	__cond3745
	.text
__body3770:
	movq	(%r9 ), %rdx
	addq	$1, %rdx
	movq	%rdx, (%r9 )
	movq	(%r10), %rdx
	movq	(%r8 ), %rsi
	subq	%rsi, %rdx
	movq	%rdx, (%r10)
	jmp	__cond3771
	.text
__cond3745:
	movq	(%r10), %rdx
	movq	(%r8 ), %rsi
	cmpq	%rsi, %rdx
	setge	%dl
	andq	$1, %rdx
	cmpq	$0, %rdx
	jne	__body3744
	jmp	__post3743
	.text
__cond3771:
	movq	(%r10), %rdx
	movq	(%r8 ), %rsi
	cmpq	%rsi, %rdx
	setge	%dl
	andq	$1, %rdx
	cmpq	$0, %rdx
	jne	__body3770
	jmp	__post3769
	.text
__else3728:
	jmp	__merge3727
	.text
__else3761:
	movq	(%r9 ), %rdx
	movq	$0, %rax
	subq	%rdx, %rax
	movq	%rax, %rdx
	subq	$1, %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
__else3764:
	jmp	__merge3763
	.text
__merge3727:
	movq	$0, %rax
	movq	%r9 , %rcx
	movq	%rax, (%rcx)
	movq	(%rdx), %rsi
	movq	%rsi, (%r10)
	movq	(%rdx), %rsi
	cmpq	$0, %rsi
	setl	%sil
	andq	$1, %rsi
	cmpq	$0, %rsi
	jne	__then3765
	jmp	__else3764
	.text
__merge3760:
	jmp	__merge3763
	.text
__merge3763:
	jmp	__cond3771
	.text
__post3743:
	movq	(%r10), %rdx
	cmpq	$0, %rdx
	sete	%dl
	andq	$1, %rdx
	cmpq	$0, %rdx
	jne	__then3762
	jmp	__else3761
	.text
__post3769:
	movq	(%r9 ), %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
__then3729:
	movq	(%r8 ), %rsi
	movq	$0, %rax
	subq	%rsi, %rax
	movq	%rax, %rsi
	movq	(%rdx), %rdx
	pushq	%rsi
	movq	%rdx, %rdi
	callq	_euclid_division
	popq	%rsi
	movq	%rax, %rdx
	movq	$0, %rax
	subq	%rdx, %rax
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
__then3762:
	movq	(%r9 ), %rdx
	movq	$0, %rax
	subq	%rdx, %rax
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
__then3765:
	movq	(%rdx), %rdx
	movq	$0, %rax
	subq	%rdx, %rax
	movq	%rax, %rdx
	movq	%rdx, (%r10)
	jmp	__cond3745
	.text
	.globl	_binary_search
_binary_search:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rcx, -8(%rbp)
	subq	$8, %rsp
	movq	%rsp, %r8 
	subq	$8, %rsp
	movq	%rsp, %r9 
	subq	$8, %rsp
	movq	%rsp, %r10
	subq	$8, %rsp
	movq	%rsp, %r11
	subq	$8, %rsp
	movq	%rsp, -16(%rbp)
	movq	%rdi, (%r8 )
	movq	%rsi, (%r9 )
	movq	%rdx, (%r10)
	movq	-8(%rbp), %rax
	movq	%r11, %rcx
	movq	%rax, (%rcx)
	movq	(%r11), %rdx
	movq	(%r10), %rsi
	cmpq	%rsi, %rdx
	setl	%dl
	andq	$1, %rdx
	cmpq	$0, %rdx
	jne	__then3673
	jmp	__else3672
	.text
__else3672:
	jmp	__merge3671
	.text
__else3695:
	jmp	__merge3694
	.text
__else3712:
	movq	$1, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
__merge3671:
	movq	(%r11), %rdx
	movq	(%r10), %rsi
	addq	%rsi, %rdx
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	movq	$2, %rsi
	movq	%rdx, %rdi
	callq	_euclid_division
	popq	%r8 
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	(%r8 ), %rdx
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	movq	%rdx, %rax
	movq	%rax, %rdi
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	callq	_oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	%rdx, %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	%rsi, %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %rdx
	movq	(%rdx), %rdx
	movq	(%r9 ), %rsi
	cmpq	%rsi, %rdx
	setg	%dl
	andq	$1, %rdx
	cmpq	$0, %rdx
	jne	__then3696
	jmp	__else3695
	.text
__merge3694:
	movq	(%r8 ), %rdx
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	movq	%rdx, %rax
	movq	%rax, %rdi
	pushq	%r11
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	callq	_oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r11
	movq	%rdx, %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	%rsi, %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %rdx
	movq	(%rdx), %rdx
	movq	(%r9 ), %rsi
	cmpq	%rsi, %rdx
	setl	%dl
	andq	$1, %rdx
	cmpq	$0, %rdx
	jne	__then3713
	jmp	__else3712
	.text
__merge3711:
	movq	$0, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
__then3673:
	movq	$0, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
__then3696:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	subq	$1, %rdx
	movq	(%r10), %rsi
	movq	(%r9 ), %rdi
	movq	(%r8 ), %r8 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movq	%rdi, %rsi
	movq	%r8 , %rdi
	callq	_binary_search
	popq	%rsi
	popq	%rdi
	popq	%r8 
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
__then3713:
	movq	(%r11), %rdx
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	addq	$1, %rsi
	movq	(%r9 ), %rdi
	movq	(%r8 ), %r8 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movq	%rdi, %rsi
	movq	%r8 , %rdi
	callq	_binary_search
	popq	%rsi
	popq	%rdi
	popq	%r8 
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
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
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	$100, %rdi
	callq	_oat_alloc_array
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r8 
	movq	%rax, %r9 
	movq	%r9 , %rax
	movq	%rax, %r9 
	movq	%r9 , (%rdx)
	movq	$0, %rax
	movq	%rsi, %rcx
	movq	%rax, (%rcx)
	jmp	__cond3621
	.text
__body3620:
	movq	(%rdx), %r9 
	movq	(%rsi), %r10
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
	movq	(%rsi), %r10
	imulq	$2, %r10
	addq	$1, %r10
	movq	%r10, (%r9 )
	movq	(%rsi), %r9 
	addq	$1, %r9 
	movq	%r9 , (%rsi)
	jmp	__cond3621
	.text
__cond3621:
	movq	(%rsi), %r9 
	cmpq	$100, %r9 
	setl	%r9b
	andq	$1, %r9 
	cmpq	$0, %r9 
	jne	__body3620
	jmp	__post3619
	.text
__else3654:
	jmp	__merge3653
	.text
__merge3653:
	movq	$0, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
__post3619:
	movq	(%rdx), %rsi
	pushq	%r8 
	pushq	%rdi
	pushq	%rdx
	movq	$99, %rcx
	movq	$0, %rdx
	movq	%rsi, %rdi
	movq	$80, %rsi
	callq	_binary_search
	popq	%rdx
	popq	%rdi
	popq	%r8 
	movq	%rax, %rsi
	movq	%rsi, (%rdi)
	movq	(%rdx), %rdx
	pushq	%r8 
	pushq	%rdi
	movq	$99, %rcx
	movq	$81, %rsi
	movq	%rdx, %rdi
	movq	$0, %rdx
	callq	_binary_search
	popq	%rdi
	popq	%r8 
	movq	%rax, %rdx
	movq	%rdx, (%r8 )
	movq	(%rdi), %rdx
	movq	(%r8 ), %rsi
	andq	%rsi, %rdx
	cmpq	$0, %rdx
	sete	%dl
	andq	$1, %rdx
	movq	(%rdi), %rsi
	movq	(%r8 ), %rdi
	orq	%rdi, %rsi
	andq	%rsi, %rdx
	cmpq	$0, %rdx
	jne	__then3655
	jmp	__else3654
	.text
__then3655:
	leaq	__str_arr3650(%rip), %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, %rdx
	pushq	%rdx
	movq	%rdx, %rdi
	callq	_print_string
	popq	%rdx
	jmp	__merge3653