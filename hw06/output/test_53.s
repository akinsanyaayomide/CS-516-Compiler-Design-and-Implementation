	.data
	.globl	_mat1
_mat1:
	.quad	1
	.quad	2
	.quad	3
	.quad	4
	.data
	.globl	_mat2
_mat2:
	.quad	5
	.quad	6
	.quad	7
	.quad	8
	.data
	.globl	_mat3
_mat3:
	.quad	19
	.quad	22
	.quad	43
	.quad	50
	.data
	.globl	_matr
_matr:
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.text
	.globl	_main
_main:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rsp, %rdx
	movq	$10000000, %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	jmp	_loop
	.text
_body:
	pushq	%rdx
	leaq	_matr(%rip), %rdx
	leaq	_mat2(%rip), %rsi
	leaq	_mat1(%rip), %rdi
	callq	_matmul
	popq	%rdx
	pushq	%rdx
	leaq	_matr(%rip), %rsi
	leaq	_mat3(%rip), %rdi
	callq	_mateq
	popq	%rdx
	movq	%rax, %rsi
	movq	(%rdx), %rsi
	subq	$1, %rsi
	movq	%rsi, (%rdx)
	jmp	_loop
	.text
_exit:
	movq	$0, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_loop:
	movq	(%rdx), %rsi
	cmpq	$0, %rsi
	sete	%sil
	andq	$1, %rsi
	cmpq	$0, %rsi
	jne	_exit
	jmp	_body
	.text
	.globl	_matmul
_matmul:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$104, %rsp
	subq	$8, %rsp
	movq	%rsp, %r8 
	subq	$8, %rsp
	movq	%rsp, %r9 
	movq	$0, %rax
	movq	%r8 , %rcx
	movq	%rax, (%rcx)
	jmp	_starti
	.text
_endi:
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_endj:
	addq	$1, %r10
	movq	%r10, (%r8 )
	jmp	_starti
	.text
_starti:
	movq	(%r8 ), %r10
	cmpq	$2, %r10
	setl	%r11b
	andq	$1, %r11
	cmpq	$0, %r11
	jne	_theni
	jmp	_endi
	.text
_startj:
	movq	(%r9 ), %r11
	cmpq	$2, %r11
	setl	-8(%rbp)
	andq	$1, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	_thenj
	jmp	_endj
	.text
_theni:
	movq	$0, %rax
	movq	%r9 , %rcx
	movq	%rax, (%rcx)
	jmp	_startj
	.text
_thenj:
	movq	%rdx, %rax
	addq	$0, %rax
	movq	%rax, %rcx
	movq	%r10, %rax
	imulq	$16, %rax
	addq	%rcx, %rax
	movq	%rax, %rcx
	movq	%r11, %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -16(%rbp)
	movq	%rdi, %rax
	addq	$0, %rax
	movq	%rax, %rcx
	movq	%r10, %rax
	imulq	$16, %rax
	addq	%rcx, %rax
	addq	$0, %rax
	movq	%rax, -24(%rbp)
	movq	%rsi, %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, %rcx
	movq	%r11, %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -32(%rbp)
	movq	%rdi, %rax
	addq	$0, %rax
	movq	%rax, %rcx
	movq	%r10, %rax
	imulq	$16, %rax
	addq	%rcx, %rax
	addq	$8, %rax
	movq	%rax, -40(%rbp)
	movq	%rsi, %rax
	addq	$0, %rax
	addq	$16, %rax
	movq	%rax, %rcx
	movq	%r11, %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -48(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-56(%rbp), %rax
	imulq	-64(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	-72(%rbp), %rax
	imulq	-80(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	-88(%rbp), %rax
	addq	-96(%rbp), %rax
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	addq	$1, %r11
	movq	%r11, (%r9 )
	jmp	_startj
	.text
	.globl	_mateq
_mateq:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	subq	$8, %rsp
	movq	%rsp, %rdx
	movq	$0, %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	subq	$8, %rsp
	movq	%rsp, %r8 
	subq	$8, %rsp
	movq	%rsp, %r9 
	movq	$0, %rax
	movq	%r8 , %rcx
	movq	%rax, (%rcx)
	jmp	_starti1
	.text
_endi1:
	movq	(%rdx), %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_endj1:
	addq	$1, %r10
	movq	%r10, (%r8 )
	jmp	_starti1
	.text
_starti1:
	movq	(%r8 ), %r10
	cmpq	$2, %r10
	setl	%r11b
	andq	$1, %r11
	cmpq	$0, %r11
	jne	_theni1
	jmp	_endi1
	.text
_startj1:
	movq	(%r9 ), %r11
	cmpq	$2, %r11
	setl	-8(%rbp)
	andq	$1, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	_thenj1
	jmp	_endj1
	.text
_theni1:
	movq	$0, %rax
	movq	%r9 , %rcx
	movq	%rax, (%rcx)
	jmp	_startj1
	.text
_thenj1:
	movq	%rdi, %rax
	addq	$0, %rax
	movq	%rax, %rcx
	movq	%r10, %rax
	imulq	$16, %rax
	addq	%rcx, %rax
	movq	%rax, %rcx
	movq	%r11, %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -16(%rbp)
	movq	%rsi, %rax
	addq	$0, %rax
	movq	%rax, %rcx
	movq	%r10, %rax
	imulq	$16, %rax
	addq	%rcx, %rax
	movq	%rax, %rcx
	movq	%r11, %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	xorq	-40(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	orq	-56(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	addq	$1, %r11
	movq	%r11, (%r9 )
	jmp	_startj1