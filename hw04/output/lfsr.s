	.data
	.globl	_lfsr_iterations
_lfsr_iterations:
	.quad	5
	.data
	.globl	_lfsr_length
_lfsr_length:
	.quad	4
	.data
	.globl	_lfsr_init_values
_lfsr_init_values:
	.quad	4
	.quad	1
	.quad	0
	.quad	1
	.quad	0
	.data
	.globl	__raw_string94
__raw_string94:
	.asciz	"T"
	.data
	.globl	__raw_string96
__raw_string96:
	.asciz	"F"
	.data
	.globl	__raw_string69
__raw_string69:
	.asciz	" "
	.text
	.globl	_xor
_xor:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$120, %rsp
	movq	%rdi, %rax
	movq	%rax, -8(%rbp)
	movq	%rsi, %rax
	movq	%rax, -16(%rbp)
	pushq	$0
	movq	%rsp, -24(%rbp)
	pushq	$0
	movq	%rsp, -32(%rbp)
	movq	-8(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, (%rax)
	movq	-16(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, (%rax)
	movq	-32(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -56(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	$0, %rcx
	andq	%rcx, %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	-56(%rbp), %rcx
	andq	%rcx, %rax
	movq	%rax, -80(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	$0, %rcx
	andq	%rcx, %rax
	movq	%rax, -96(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	-96(%rbp), %rcx
	andq	%rcx, %rax
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	movq	-80(%rbp), %rcx
	orq	%rcx, %rax
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	_string_of_bool
_string_of_bool:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, %rax
	movq	%rax, -8(%rbp)
	pushq	$0
	movq	%rsp, -16(%rbp)
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, (%rax)
	jmp	string_of_bool._start97
	.text
string_of_bool._start97:
	movq	-16(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rax
	cmpq	$0, %rax
	jne	string_of_bool._then98
	jmp	string_of_bool._else99
	.text
string_of_bool._then98:
	leaq	__raw_string94(%rip), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
string_of_bool._else99:
	leaq	__raw_string96(%rip), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	_print_lfsr
_print_lfsr:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$160, %rsp
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
	movq	-8(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, (%rax)
	movq	-16(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, (%rax)
	movq	$0, %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, (%rax)
	jmp	print_lfsr._start88
	.text
print_lfsr._start88:
	movq	-32(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -72(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	-72(%rbp), %rcx
	cmpq	%rcx, %rax
	setl	-88(%rbp)
	andq	$1, -88(%rbp)
	movq	-88(%rbp), %rax
	cmpq	$0, %rax
	jne	print_lfsr._body89
	jmp	print_lfsr._else90
	.text
print_lfsr._body89:
	movq	-24(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -96(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -104(%rbp)
	movq	-96(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-104(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -120(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	callq	_string_of_bool
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	callq	_print_string
	movq	-40(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -144(%rbp)
	movq	-144(%rbp), %rax
	movq	$1, %rcx
	addq	%rcx, %rax
	movq	%rax, -152(%rbp)
	movq	-152(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, (%rax)
	jmp	print_lfsr._start88
	.text
print_lfsr._else90:
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	_program
_program:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$624, %rsp
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
	pushq	$0
	movq	%rsp, -64(%rbp)
	pushq	$0
	movq	%rsp, -72(%rbp)
	movq	-8(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, (%rax)
	movq	-16(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, (%rax)
	leaq	_lfsr_length(%rip), %rax
	movq	(%rax), %rcx
	movq	%rcx, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	callq	_oat_alloc_array
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, (%rax)
	movq	$0, %rcx
	movq	-48(%rbp), %rax
	movq	%rcx, (%rax)
	jmp	program._start20
	.text
program._start20:
	leaq	_lfsr_length(%rip), %rax
	movq	(%rax), %rcx
	movq	%rcx, -136(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -144(%rbp)
	movq	-144(%rbp), %rax
	movq	-136(%rbp), %rcx
	cmpq	%rcx, %rax
	setl	-152(%rbp)
	andq	$1, -152(%rbp)
	movq	-152(%rbp), %rax
	cmpq	$0, %rax
	jne	program._body21
	jmp	program._else22
	.text
program._body21:
	leaq	_lfsr_init_values(%rip), %rax
	movq	%rax, -160(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -168(%rbp)
	movq	-160(%rbp), %rax
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
	movq	-40(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -192(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -200(%rbp)
	movq	-192(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-200(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -208(%rbp)
	movq	-184(%rbp), %rcx
	movq	-208(%rbp), %rax
	movq	%rcx, (%rax)
	movq	-48(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -224(%rbp)
	movq	-224(%rbp), %rax
	movq	$1, %rcx
	addq	%rcx, %rax
	movq	%rax, -232(%rbp)
	movq	-232(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	%rcx, (%rax)
	jmp	program._start20
	.text
program._else22:
	movq	$0, %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, (%rax)
	jmp	program._start62
	.text
program._start62:
	leaq	_lfsr_iterations(%rip), %rax
	movq	(%rax), %rcx
	movq	%rcx, -256(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -264(%rbp)
	movq	-264(%rbp), %rax
	movq	-256(%rbp), %rcx
	cmpq	%rcx, %rax
	setl	-272(%rbp)
	andq	$1, -272(%rbp)
	movq	-272(%rbp), %rax
	cmpq	$0, %rax
	jne	program._body63
	jmp	program._else64
	.text
program._body63:
	movq	-40(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -280(%rbp)
	leaq	_lfsr_length(%rip), %rax
	movq	(%rax), %rcx
	movq	%rcx, -288(%rbp)
	movq	-288(%rbp), %rax
	movq	$1, %rcx
	subq	%rcx, %rax
	movq	%rax, -296(%rbp)
	movq	-280(%rbp), %rax
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
	movq	-40(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -320(%rbp)
	leaq	_lfsr_length(%rip), %rax
	movq	(%rax), %rcx
	movq	%rcx, -328(%rbp)
	movq	-328(%rbp), %rax
	movq	$2, %rcx
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
	movq	-344(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -352(%rbp)
	movq	-312(%rbp), %rax
	movq	%rax, %rdi
	movq	-352(%rbp), %rax
	movq	%rax, %rsi
	callq	_xor
	movq	%rax, -360(%rbp)
	movq	-360(%rbp), %rcx
	movq	-64(%rbp), %rax
	movq	%rcx, (%rax)
	leaq	_lfsr_length(%rip), %rax
	movq	(%rax), %rcx
	movq	%rcx, -376(%rbp)
	movq	-376(%rbp), %rax
	movq	$1, %rcx
	subq	%rcx, %rax
	movq	%rax, -384(%rbp)
	movq	-384(%rbp), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, (%rax)
	jmp	program._start54
	.text
program._start54:
	movq	-72(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -400(%rbp)
	movq	-400(%rbp), %rax
	movq	$0, %rcx
	cmpq	%rcx, %rax
	setg	-408(%rbp)
	andq	$1, -408(%rbp)
	movq	-408(%rbp), %rax
	cmpq	$0, %rax
	jne	program._body55
	jmp	program._else56
	.text
program._body55:
	movq	-40(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -416(%rbp)
	movq	-72(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -424(%rbp)
	movq	-424(%rbp), %rax
	movq	$1, %rcx
	subq	%rcx, %rax
	movq	%rax, -432(%rbp)
	movq	-416(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-432(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -440(%rbp)
	movq	-440(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -448(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -456(%rbp)
	movq	-72(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -464(%rbp)
	movq	-456(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-464(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -472(%rbp)
	movq	-448(%rbp), %rcx
	movq	-472(%rbp), %rax
	movq	%rcx, (%rax)
	movq	-72(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -488(%rbp)
	movq	-488(%rbp), %rax
	movq	$1, %rcx
	subq	%rcx, %rax
	movq	%rax, -496(%rbp)
	movq	-496(%rbp), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, (%rax)
	jmp	program._start54
	.text
program._else56:
	movq	-64(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -512(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -520(%rbp)
	movq	-520(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, -528(%rbp)
	movq	-512(%rbp), %rcx
	movq	-528(%rbp), %rax
	movq	%rcx, (%rax)
	movq	-56(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -544(%rbp)
	movq	-544(%rbp), %rax
	movq	$1, %rcx
	addq	%rcx, %rax
	movq	%rax, -552(%rbp)
	movq	-552(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, (%rax)
	jmp	program._start62
	.text
program._else64:
	leaq	_lfsr_init_values(%rip), %rax
	movq	%rax, -568(%rbp)
	leaq	_lfsr_length(%rip), %rax
	movq	(%rax), %rcx
	movq	%rcx, -576(%rbp)
	movq	-568(%rbp), %rax
	movq	%rax, %rdi
	movq	-576(%rbp), %rax
	movq	%rax, %rsi
	callq	_print_lfsr
	leaq	__raw_string69(%rip), %rax
	movq	%rax, -592(%rbp)
	movq	-592(%rbp), %rax
	movq	%rax, %rdi
	callq	_print_string
	movq	-40(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -608(%rbp)
	leaq	_lfsr_length(%rip), %rax
	movq	(%rax), %rcx
	movq	%rcx, -616(%rbp)
	movq	-608(%rbp), %rax
	movq	%rax, %rdi
	movq	-616(%rbp), %rax
	movq	%rax, %rsi
	callq	_print_lfsr
	movq	$0, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	