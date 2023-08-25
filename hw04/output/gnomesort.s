	.text
	.globl	_gnomeSort
_gnomeSort:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$472, %rsp
	movq	%rdi, %rax
	movq	%rax, -8(%rbp)
	movq	%rsi, %rax
	movq	%rax, -16(%rbp)
	pushq	$0
	movq	%rsp, -24(%rbp)
	pushq	$0
	movq	%rsp, -32(%rbp)
	pushq	$0
	movq	%rsp, -40(%rbp)
	pushq	$0
	movq	%rsp, -48(%rbp)
	pushq	$0
	movq	%rsp, -56(%rbp)
	movq	-8(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, (%rax)
	movq	-16(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, (%rax)
	movq	$1, %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, (%rax)
	movq	$2, %rcx
	movq	-48(%rbp), %rax
	movq	%rcx, (%rax)
	jmp	gnomeSort._start92
	.text
gnomeSort._start92:
	movq	-32(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -96(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	-96(%rbp), %rcx
	cmpq	%rcx, %rax
	setl	-112(%rbp)
	andq	$1, -112(%rbp)
	movq	-112(%rbp), %rax
	cmpq	$0, %rax
	jne	gnomeSort._body93
	jmp	gnomeSort._else94
	.text
gnomeSort._body93:
	jmp	gnomeSort._start88
	.text
gnomeSort._start88:
	movq	-24(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -120(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -128(%rbp)
	movq	-120(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-128(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -144(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -152(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -160(%rbp)
	movq	-160(%rbp), %rax
	movq	$1, %rcx
	subq	%rcx, %rax
	movq	%rax, -168(%rbp)
	movq	-152(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-168(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -176(%rbp)
	movq	-176(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -184(%rbp)
	movq	-184(%rbp), %rax
	movq	-144(%rbp), %rcx
	cmpq	%rcx, %rax
	setle	-192(%rbp)
	andq	$1, -192(%rbp)
	movq	-192(%rbp), %rax
	cmpq	$0, %rax
	jne	gnomeSort._then89
	jmp	gnomeSort._else90
	.text
gnomeSort._then89:
	movq	-48(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -200(%rbp)
	movq	-200(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, (%rax)
	movq	-48(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -216(%rbp)
	movq	-216(%rbp), %rax
	movq	$1, %rcx
	addq	%rcx, %rax
	movq	%rax, -224(%rbp)
	movq	-224(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	%rcx, (%rax)
	jmp	gnomeSort._post91
	.text
gnomeSort._else90:
	movq	-24(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -240(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -248(%rbp)
	movq	-248(%rbp), %rax
	movq	$1, %rcx
	subq	%rcx, %rax
	movq	%rax, -256(%rbp)
	movq	-240(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-256(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -264(%rbp)
	movq	-264(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -272(%rbp)
	movq	-272(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, (%rax)
	movq	-24(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -288(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -296(%rbp)
	movq	-288(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-296(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -304(%rbp)
	movq	-304(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -312(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -320(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -328(%rbp)
	movq	-328(%rbp), %rax
	movq	$1, %rcx
	subq	%rcx, %rax
	movq	%rax, -336(%rbp)
	movq	-320(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-336(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -344(%rbp)
	movq	-312(%rbp), %rcx
	movq	-344(%rbp), %rax
	movq	%rcx, (%rax)
	movq	-56(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -360(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -368(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -376(%rbp)
	movq	-368(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-376(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -384(%rbp)
	movq	-360(%rbp), %rcx
	movq	-384(%rbp), %rax
	movq	%rcx, (%rax)
	movq	-40(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -400(%rbp)
	movq	-400(%rbp), %rax
	movq	$1, %rcx
	subq	%rcx, %rax
	movq	%rax, -408(%rbp)
	movq	-408(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, (%rax)
	jmp	gnomeSort._start84
	.text
gnomeSort._start84:
	movq	-40(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -424(%rbp)
	movq	-424(%rbp), %rax
	movq	$0, %rcx
	cmpq	%rcx, %rax
	sete	-432(%rbp)
	andq	$1, -432(%rbp)
	movq	-432(%rbp), %rax
	cmpq	$0, %rax
	jne	gnomeSort._then85
	jmp	gnomeSort._else86
	.text
gnomeSort._then85:
	movq	-48(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -440(%rbp)
	movq	-440(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, (%rax)
	movq	-48(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -456(%rbp)
	movq	-456(%rbp), %rax
	movq	$1, %rcx
	addq	%rcx, %rax
	movq	%rax, -464(%rbp)
	movq	-464(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	%rcx, (%rax)
	jmp	gnomeSort._post87
	.text
gnomeSort._else86:
	jmp	gnomeSort._post87
	.text
gnomeSort._post87:
	jmp	gnomeSort._post91
	.text
gnomeSort._post91:
	jmp	gnomeSort._start92
	.text
gnomeSort._else94:
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	_program
_program:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$344, %rsp
	movq	%rdi, %rax
	movq	%rax, -8(%rbp)
	movq	%rsi, %rax
	movq	%rax, -16(%rbp)
	pushq	$0
	movq	%rsp, -24(%rbp)
	pushq	$0
	movq	%rsp, -32(%rbp)
	pushq	$0
	movq	%rsp, -40(%rbp)
	pushq	$0
	movq	%rsp, -48(%rbp)
	pushq	$0
	movq	%rsp, -56(%rbp)
	movq	-8(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, (%rax)
	movq	-16(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, (%rax)
	movq	$8, %rax
	movq	%rax, %rdi
	callq	_oat_alloc_array
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$56, %rax
	movq	%rax, -96(%rbp)
	movq	$0, %rcx
	movq	-96(%rbp), %rax
	movq	%rcx, (%rax)
	movq	-88(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$48, %rax
	movq	%rax, -112(%rbp)
	movq	$2, %rcx
	movq	-112(%rbp), %rax
	movq	%rcx, (%rax)
	movq	-88(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$40, %rax
	movq	%rax, -128(%rbp)
	movq	$99, %rcx
	movq	-128(%rbp), %rax
	movq	%rcx, (%rax)
	movq	-88(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$32, %rax
	movq	%rax, -144(%rbp)
	movq	$30, %rcx
	movq	-144(%rbp), %rax
	movq	%rcx, (%rax)
	movq	-88(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$24, %rax
	movq	%rax, -160(%rbp)
	movq	$65, %rcx
	movq	-160(%rbp), %rax
	movq	%rcx, (%rax)
	movq	-88(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$16, %rax
	movq	%rax, -176(%rbp)
	movq	$1, %rcx
	movq	-176(%rbp), %rax
	movq	%rcx, (%rax)
	movq	-88(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$8, %rax
	movq	%rax, -192(%rbp)
	movq	$200, %rcx
	movq	-192(%rbp), %rax
	movq	%rcx, (%rax)
	movq	-88(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, -208(%rbp)
	movq	$5, %rcx
	movq	-208(%rbp), %rax
	movq	%rcx, (%rax)
	movq	-88(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, (%rax)
	movq	$8, %rcx
	movq	-48(%rbp), %rax
	movq	%rcx, (%rax)
	movq	-40(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -240(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -248(%rbp)
	movq	-240(%rbp), %rax
	movq	%rax, %rdi
	movq	-248(%rbp), %rax
	movq	%rax, %rsi
	callq	_gnomeSort
	movq	$0, %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, (%rax)
	jmp	program._start36
	.text
program._start36:
	movq	-56(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -272(%rbp)
	movq	-272(%rbp), %rax
	movq	$8, %rcx
	cmpq	%rcx, %rax
	setl	-280(%rbp)
	andq	$1, -280(%rbp)
	movq	-280(%rbp), %rax
	cmpq	$0, %rax
	jne	program._body37
	jmp	program._else38
	.text
program._body37:
	movq	-40(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -288(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -296(%rbp)
	movq	-288(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-296(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -304(%rbp)
	movq	-304(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -312(%rbp)
	movq	-312(%rbp), %rax
	movq	%rax, %rdi
	callq	_print_int
	movq	-56(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -328(%rbp)
	movq	-328(%rbp), %rax
	movq	$1, %rcx
	addq	%rcx, %rax
	movq	%rax, -336(%rbp)
	movq	-336(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, (%rax)
	jmp	program._start36
	.text
program._else38:
	movq	$0, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	