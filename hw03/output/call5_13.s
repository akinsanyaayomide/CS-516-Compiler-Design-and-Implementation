	.text
	.globl	_weighted_sum
_weighted_sum:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%r12
	pushq	%r13
	pushq	%r14
	pushq	%r15
	pushq	%r15
	movq	%rsp, %r11
	subq	$200, %rsp
	movq	%rdi, %r10
	movq	%r10, -136(%r11)
	movq	%rsi, %r10
	movq	%r10, -144(%r11)
	movq	%rdx, %r10
	movq	%r10, -152(%r11)
	movq	%rcx, %r10
	movq	%r10, -160(%r11)
	movq	%r8 , %r10
	movq	%r10, -168(%r11)
	movq	%r9 , %r10
	movq	%r10, -176(%r11)
	movq	16(%rbp), %r10
	movq	%r10, -184(%r11)
	movq	24(%rbp), %r10
	movq	%r10, -192(%r11)
	movq	32(%rbp), %r10
	movq	%r10, -200(%r11)
	movq	-136(%r11), %r10
	movq	%r10, %r12
	movq	$0, %r13
	imulq	%r12, %r13
	movq	%r13, 0(%r11)
	movq	-144(%r11), %r10
	movq	%r10, %r12
	movq	$1, %r13
	imulq	%r12, %r13
	movq	%r13, -72(%r11)
	movq	-72(%r11), %r10
	movq	%r10, %r12
	movq	0(%r11), %r10
	movq	%r10, %r13
	addq	%r12, %r13
	movq	%r13, -80(%r11)
	movq	-152(%r11), %r10
	movq	%r10, %r12
	movq	$2, %r13
	imulq	%r12, %r13
	movq	%r13, -88(%r11)
	movq	-88(%r11), %r10
	movq	%r10, %r12
	movq	-80(%r11), %r10
	movq	%r10, %r13
	addq	%r12, %r13
	movq	%r13, -96(%r11)
	movq	-160(%r11), %r10
	movq	%r10, %r12
	movq	$3, %r13
	imulq	%r12, %r13
	movq	%r13, -104(%r11)
	movq	-104(%r11), %r10
	movq	%r10, %r12
	movq	-96(%r11), %r10
	movq	%r10, %r13
	addq	%r12, %r13
	movq	%r13, -112(%r11)
	movq	-168(%r11), %r10
	movq	%r10, %r12
	movq	$4, %r13
	imulq	%r12, %r13
	movq	%r13, -120(%r11)
	movq	-112(%r11), %r10
	movq	%r10, %r12
	movq	-120(%r11), %r10
	movq	%r10, %r13
	addq	%r12, %r13
	movq	%r13, -128(%r11)
	movq	-176(%r11), %r10
	movq	%r10, %r12
	movq	$5, %r13
	imulq	%r12, %r13
	movq	%r13, -8(%r11)
	movq	-8(%r11), %r10
	movq	%r10, %r12
	movq	-128(%r11), %r10
	movq	%r10, %r13
	addq	%r12, %r13
	movq	%r13, -16(%r11)
	movq	-184(%r11), %r10
	movq	%r10, %r12
	movq	$6, %r13
	imulq	%r12, %r13
	movq	%r13, -24(%r11)
	movq	-24(%r11), %r10
	movq	%r10, %r12
	movq	-16(%r11), %r10
	movq	%r10, %r13
	addq	%r12, %r13
	movq	%r13, -32(%r11)
	movq	-192(%r11), %r10
	movq	%r10, %r12
	movq	$7, %r13
	imulq	%r12, %r13
	movq	%r13, -40(%r11)
	movq	-40(%r11), %r10
	movq	%r10, %r12
	movq	-32(%r11), %r10
	movq	%r10, %r13
	addq	%r12, %r13
	movq	%r13, -48(%r11)
	movq	-200(%r11), %r10
	movq	%r10, %r12
	movq	$8, %r13
	imulq	%r12, %r13
	movq	%r13, -56(%r11)
	movq	-48(%r11), %r10
	movq	%r10, %r12
	movq	-56(%r11), %r10
	movq	%r10, %r13
	addq	%r12, %r13
	movq	%r13, -64(%r11)
	movq	-64(%r11), %r10
	movq	%r10, %rax
	movq	-8(%rbp), %rbx
	movq	-16(%rbp), %r12
	movq	-24(%rbp), %r13
	movq	-32(%rbp), %r14
	movq	-40(%rbp), %r15
	movq	%rbp, %rsp
	addq	$8, %rsp
	movq	(%rbp), %rbp
	retq	
	movq	-64(%r11), %r10
	movq	%r10, %rax
	movq	-8(%rbp), %rbx
	movq	-16(%rbp), %r12
	movq	-24(%rbp), %r13
	movq	-32(%rbp), %r14
	movq	-40(%rbp), %r15
	movq	%rbp, %rsp
	addq	$8, %rsp
	movq	(%rbp), %rbp
	retq	
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
	pushq	%r11
	subq	$24, %rsp
	movq	$0, %rdi
	movq	$1, %rsi
	movq	$2, %rdx
	movq	$3, %rcx
	movq	$4, %r8 
	movq	$5, %r9 
	movq	$6, 0(%rsp)
	movq	$7, 8(%rsp)
	movq	$8, 16(%rsp)
	leaq	_weighted_sum(%rip), %r10
	callq	*%r10
	addq	$24, %rsp
	popq	%r11
	movq	%rax, 0(%r11)
	movq	0(%r11), %r10
	movq	%r10, %rax
	movq	-8(%rbp), %rbx
	movq	-16(%rbp), %r12
	movq	-24(%rbp), %r13
	movq	-32(%rbp), %r14
	movq	-40(%rbp), %r15
	movq	%rbp, %rsp
	addq	$8, %rsp
	movq	(%rbp), %rbp
	retq	
	movq	0(%r11), %r10
	movq	%r10, %rax
	movq	-8(%rbp), %rbx
	movq	-16(%rbp), %r12
	movq	-24(%rbp), %r13
	movq	-32(%rbp), %r14
	movq	-40(%rbp), %r15
	movq	%rbp, %rsp
	addq	$8, %rsp
	movq	(%rbp), %rbp
	retq	