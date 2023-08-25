	.data
	.globl	__str_arr394
__str_arr394:
	.asciz	"[Red]"
	.data
	.globl	__str_arr397
__str_arr397:
	.asciz	"[Black]"
	.data
	.globl	__str_arr412
__str_arr412:
	.asciz	"("
	.data
	.globl	__str_arr436
__str_arr436:
	.asciz	","
	.data
	.globl	__str_arr460
__str_arr460:
	.asciz	")"
	.data
	.globl	__str_arr79
__str_arr79:
	.asciz	"INPUT:"
	.data
	.globl	__str_arr94
__str_arr94:
	.asciz	">>>OUTPUT:"
	.text
	.globl	_print_tree
_print_tree:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$520, %rsp
	movq	%rdi, %rax
	movq	%rax, -8(%rbp)
	pushq	$0
	movq	%rsp, -16(%rbp)
	pushq	$0
	movq	%rsp, -24(%rbp)
	pushq	$0
	movq	%rsp, -24(%rbp)
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, (%rax)
	movq	-16(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -48(%rbp)
	movq	-48(%rbp), %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	callq	_string_of_int
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	callq	_print_string
	movq	-16(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -88(%rbp)
	movq	-88(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	$0, %rcx
	cmpq	%rcx, %rax
	sete	-112(%rbp)
	andq	$1, -112(%rbp)
	movq	-112(%rbp), %rax
	cmpq	$0, %rax
	jne	print_tree._then402
	jmp	print_tree._else401
	.text
print_tree._then402:
	leaq	__str_arr394(%rip), %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	callq	_print_string
	jmp	print_tree._merge400
	.text
print_tree._else401:
	leaq	__str_arr397(%rip), %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	callq	_print_string
	jmp	print_tree._merge400
	.text
print_tree._merge400:
	movq	-16(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -152(%rbp)
	movq	-152(%rbp), %rax
	addq	$0, %rax
	addq	$16, %rax
	movq	%rax, -160(%rbp)
	movq	-160(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -168(%rbp)
	movq	-168(%rbp), %rax
	movq	$0, %rcx
	cmpq	%rcx, %rax
	setne	-176(%rbp)
	andq	$1, -176(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -184(%rbp)
	movq	-184(%rbp), %rax
	addq	$0, %rax
	addq	$24, %rax
	movq	%rax, -192(%rbp)
	movq	-192(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -200(%rbp)
	movq	-200(%rbp), %rax
	movq	$0, %rcx
	cmpq	%rcx, %rax
	setne	-208(%rbp)
	andq	$1, -208(%rbp)
	movq	-176(%rbp), %rax
	movq	-208(%rbp), %rcx
	orq	%rcx, %rax
	movq	%rax, -216(%rbp)
	movq	-216(%rbp), %rax
	cmpq	$0, %rax
	jne	print_tree._then417
	jmp	print_tree._else416
	.text
print_tree._then417:
	leaq	__str_arr412(%rip), %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, -224(%rbp)
	movq	-224(%rbp), %rax
	movq	%rax, %rdi
	callq	_print_string
	jmp	print_tree._merge415
	.text
print_tree._else416:
	jmp	print_tree._merge415
	.text
print_tree._merge415:
	movq	-16(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -240(%rbp)
	movq	-240(%rbp), %rax
	addq	$0, %rax
	addq	$16, %rax
	movq	%rax, -248(%rbp)
	movq	-248(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -256(%rbp)
	movq	-256(%rbp), %rax
	movq	$0, %rcx
	cmpq	%rcx, %rax
	setne	-264(%rbp)
	andq	$1, -264(%rbp)
	movq	-264(%rbp), %rax
	cmpq	$0, %rax
	jne	print_tree._nn421
	jmp	print_tree._n420
	.text
print_tree._nn421:
	movq	-256(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, (%rax)
	movq	-24(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -280(%rbp)
	movq	-280(%rbp), %rax
	movq	%rax, %rdi
	callq	_print_tree
	jmp	print_tree._m419
	.text
print_tree._n420:
	jmp	print_tree._m419
	.text
print_tree._m419:
	movq	-16(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -296(%rbp)
	movq	-296(%rbp), %rax
	addq	$0, %rax
	addq	$16, %rax
	movq	%rax, -304(%rbp)
	movq	-304(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -312(%rbp)
	movq	-312(%rbp), %rax
	movq	$0, %rcx
	cmpq	%rcx, %rax
	setne	-320(%rbp)
	andq	$1, -320(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -328(%rbp)
	movq	-328(%rbp), %rax
	addq	$0, %rax
	addq	$24, %rax
	movq	%rax, -336(%rbp)
	movq	-336(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -344(%rbp)
	movq	-344(%rbp), %rax
	movq	$0, %rcx
	cmpq	%rcx, %rax
	setne	-352(%rbp)
	andq	$1, -352(%rbp)
	movq	-320(%rbp), %rax
	movq	-352(%rbp), %rcx
	orq	%rcx, %rax
	movq	%rax, -360(%rbp)
	movq	-360(%rbp), %rax
	cmpq	$0, %rax
	jne	print_tree._then441
	jmp	print_tree._else440
	.text
print_tree._then441:
	leaq	__str_arr436(%rip), %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, -368(%rbp)
	movq	-368(%rbp), %rax
	movq	%rax, %rdi
	callq	_print_string
	jmp	print_tree._merge439
	.text
print_tree._else440:
	jmp	print_tree._merge439
	.text
print_tree._merge439:
	movq	-16(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -384(%rbp)
	movq	-384(%rbp), %rax
	addq	$0, %rax
	addq	$24, %rax
	movq	%rax, -392(%rbp)
	movq	-392(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -400(%rbp)
	movq	-400(%rbp), %rax
	movq	$0, %rcx
	cmpq	%rcx, %rax
	setne	-408(%rbp)
	andq	$1, -408(%rbp)
	movq	-408(%rbp), %rax
	cmpq	$0, %rax
	jne	print_tree._nn445
	jmp	print_tree._n444
	.text
print_tree._nn445:
	movq	-400(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, (%rax)
	movq	-24(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -424(%rbp)
	movq	-424(%rbp), %rax
	movq	%rax, %rdi
	callq	_print_tree
	jmp	print_tree._m443
	.text
print_tree._n444:
	jmp	print_tree._m443
	.text
print_tree._m443:
	movq	-16(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -440(%rbp)
	movq	-440(%rbp), %rax
	addq	$0, %rax
	addq	$16, %rax
	movq	%rax, -448(%rbp)
	movq	-448(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -456(%rbp)
	movq	-456(%rbp), %rax
	movq	$0, %rcx
	cmpq	%rcx, %rax
	setne	-464(%rbp)
	andq	$1, -464(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -472(%rbp)
	movq	-472(%rbp), %rax
	addq	$0, %rax
	addq	$24, %rax
	movq	%rax, -480(%rbp)
	movq	-480(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -488(%rbp)
	movq	-488(%rbp), %rax
	movq	$0, %rcx
	cmpq	%rcx, %rax
	setne	-496(%rbp)
	andq	$1, -496(%rbp)
	movq	-464(%rbp), %rax
	movq	-496(%rbp), %rcx
	orq	%rcx, %rax
	movq	%rax, -504(%rbp)
	movq	-504(%rbp), %rax
	cmpq	$0, %rax
	jne	print_tree._then465
	jmp	print_tree._else464
	.text
print_tree._then465:
	leaq	__str_arr460(%rip), %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, -512(%rbp)
	movq	-512(%rbp), %rax
	movq	%rax, %rdi
	callq	_print_string
	jmp	print_tree._merge463
	.text
print_tree._else464:
	jmp	print_tree._merge463
	.text
print_tree._merge463:
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	_balance
_balance:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$1432, %rsp
	movq	%rdi, %rax
	movq	%rax, -8(%rbp)
	pushq	$0
	movq	%rsp, -16(%rbp)
	pushq	$0
	movq	%rsp, -24(%rbp)
	pushq	$0
	movq	%rsp, -32(%rbp)
	pushq	$0
	movq	%rsp, -40(%rbp)
	pushq	$0
	movq	%rsp, -40(%rbp)
	pushq	$0
	movq	%rsp, -32(%rbp)
	pushq	$0
	movq	%rsp, -40(%rbp)
	pushq	$0
	movq	%rsp, -40(%rbp)
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, (%rax)
	movq	-16(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -88(%rbp)
	movq	-88(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, (%rax)
	movq	-16(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -104(%rbp)
	movq	-104(%rbp), %rax
	addq	$0, %rax
	addq	$16, %rax
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -120(%rbp)
	movq	-120(%rbp), %rax
	movq	$0, %rcx
	cmpq	%rcx, %rax
	setne	-128(%rbp)
	andq	$1, -128(%rbp)
	movq	-128(%rbp), %rax
	cmpq	$0, %rax
	jne	balance._nn194
	jmp	balance._n193
	.text
balance._nn194:
	movq	-120(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, (%rax)
	movq	-32(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -144(%rbp)
	movq	-144(%rbp), %rax
	addq	$0, %rax
	addq	$16, %rax
	movq	%rax, -152(%rbp)
	movq	-152(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -160(%rbp)
	movq	-160(%rbp), %rax
	movq	$0, %rcx
	cmpq	%rcx, %rax
	setne	-168(%rbp)
	andq	$1, -168(%rbp)
	movq	-168(%rbp), %rax
	cmpq	$0, %rax
	jne	balance._nn201
	jmp	balance._n200
	.text
balance._nn201:
	movq	-160(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, (%rax)
	movq	-16(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -184(%rbp)
	movq	-184(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, -192(%rbp)
	movq	-192(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -200(%rbp)
	movq	-200(%rbp), %rax
	movq	$0, %rcx
	cmpq	%rcx, %rax
	setne	-208(%rbp)
	andq	$1, -208(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -216(%rbp)
	movq	-216(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, -224(%rbp)
	movq	-224(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -232(%rbp)
	movq	-232(%rbp), %rax
	movq	$0, %rcx
	cmpq	%rcx, %rax
	sete	-240(%rbp)
	andq	$1, -240(%rbp)
	movq	-208(%rbp), %rax
	movq	-240(%rbp), %rcx
	andq	%rcx, %rax
	movq	%rax, -248(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -256(%rbp)
	movq	-256(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, -264(%rbp)
	movq	-264(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -272(%rbp)
	movq	-272(%rbp), %rax
	movq	$0, %rcx
	cmpq	%rcx, %rax
	sete	-280(%rbp)
	andq	$1, -280(%rbp)
	movq	-248(%rbp), %rax
	movq	-280(%rbp), %rcx
	andq	%rcx, %rax
	movq	%rax, -288(%rbp)
	movq	-288(%rbp), %rax
	cmpq	$0, %rax
	jne	balance._then236
	jmp	balance._else235
	.text
balance._then236:
	movq	-32(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -296(%rbp)
	movq	-296(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, (%rax)
	movq	-16(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -312(%rbp)
	movq	-312(%rbp), %rax
	addq	$0, %rax
	addq	$16, %rax
	movq	%rax, -320(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -328(%rbp)
	movq	-328(%rbp), %rax
	addq	$0, %rax
	addq	$24, %rax
	movq	%rax, -336(%rbp)
	movq	-336(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -344(%rbp)
	movq	-344(%rbp), %rcx
	movq	-320(%rbp), %rax
	movq	%rcx, (%rax)
	movq	-32(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -360(%rbp)
	movq	-360(%rbp), %rax
	addq	$0, %rax
	addq	$24, %rax
	movq	%rax, -368(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -376(%rbp)
	movq	-376(%rbp), %rcx
	movq	-368(%rbp), %rax
	movq	%rcx, (%rax)
	movq	-40(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -392(%rbp)
	movq	-392(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, -400(%rbp)
	movq	$1, %rcx
	movq	-400(%rbp), %rax
	movq	%rcx, (%rax)
	jmp	balance._merge234
	.text
balance._else235:
	jmp	balance._merge234
	.text
balance._merge234:
	jmp	balance._m199
	.text
balance._n200:
	jmp	balance._m199
	.text
balance._m199:
	movq	-32(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -416(%rbp)
	movq	-416(%rbp), %rax
	addq	$0, %rax
	addq	$24, %rax
	movq	%rax, -424(%rbp)
	movq	-424(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -432(%rbp)
	movq	-432(%rbp), %rax
	movq	$0, %rcx
	cmpq	%rcx, %rax
	setne	-440(%rbp)
	andq	$1, -440(%rbp)
	movq	-440(%rbp), %rax
	cmpq	$0, %rax
	jne	balance._nn240
	jmp	balance._n239
	.text
balance._nn240:
	movq	-432(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, (%rax)
	movq	-16(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -456(%rbp)
	movq	-456(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, -464(%rbp)
	movq	-464(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -472(%rbp)
	movq	-472(%rbp), %rax
	movq	$0, %rcx
	cmpq	%rcx, %rax
	setne	-480(%rbp)
	andq	$1, -480(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -488(%rbp)
	movq	-488(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, -496(%rbp)
	movq	-496(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -504(%rbp)
	movq	-504(%rbp), %rax
	movq	$0, %rcx
	cmpq	%rcx, %rax
	sete	-512(%rbp)
	andq	$1, -512(%rbp)
	movq	-480(%rbp), %rax
	movq	-512(%rbp), %rcx
	andq	%rcx, %rax
	movq	%rax, -520(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -528(%rbp)
	movq	-528(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, -536(%rbp)
	movq	-536(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -544(%rbp)
	movq	-544(%rbp), %rax
	movq	$0, %rcx
	cmpq	%rcx, %rax
	sete	-552(%rbp)
	andq	$1, -552(%rbp)
	movq	-520(%rbp), %rax
	movq	-552(%rbp), %rcx
	andq	%rcx, %rax
	movq	%rax, -560(%rbp)
	movq	-560(%rbp), %rax
	cmpq	$0, %rax
	jne	balance._then285
	jmp	balance._else284
	.text
balance._then285:
	movq	-40(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -568(%rbp)
	movq	-568(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, (%rax)
	movq	-32(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -584(%rbp)
	movq	-584(%rbp), %rax
	addq	$0, %rax
	addq	$24, %rax
	movq	%rax, -592(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -600(%rbp)
	movq	-600(%rbp), %rax
	addq	$0, %rax
	addq	$24, %rax
	movq	%rax, -608(%rbp)
	movq	-608(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -616(%rbp)
	movq	-616(%rbp), %rcx
	movq	-592(%rbp), %rax
	movq	%rcx, (%rax)
	movq	-16(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -632(%rbp)
	movq	-632(%rbp), %rax
	addq	$0, %rax
	addq	$16, %rax
	movq	%rax, -640(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -648(%rbp)
	movq	-648(%rbp), %rax
	addq	$0, %rax
	addq	$16, %rax
	movq	%rax, -656(%rbp)
	movq	-656(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -664(%rbp)
	movq	-664(%rbp), %rcx
	movq	-640(%rbp), %rax
	movq	%rcx, (%rax)
	movq	-40(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -680(%rbp)
	movq	-680(%rbp), %rax
	addq	$0, %rax
	addq	$16, %rax
	movq	%rax, -688(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -696(%rbp)
	movq	-696(%rbp), %rcx
	movq	-688(%rbp), %rax
	movq	%rcx, (%rax)
	movq	-40(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -712(%rbp)
	movq	-712(%rbp), %rax
	addq	$0, %rax
	addq	$24, %rax
	movq	%rax, -720(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -728(%rbp)
	movq	-728(%rbp), %rcx
	movq	-720(%rbp), %rax
	movq	%rcx, (%rax)
	movq	-32(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -744(%rbp)
	movq	-744(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, -752(%rbp)
	movq	$1, %rcx
	movq	-752(%rbp), %rax
	movq	%rcx, (%rax)
	jmp	balance._merge283
	.text
balance._else284:
	jmp	balance._merge283
	.text
balance._merge283:
	jmp	balance._m238
	.text
balance._n239:
	jmp	balance._m238
	.text
balance._m238:
	jmp	balance._m192
	.text
balance._n193:
	jmp	balance._m192
	.text
balance._m192:
	movq	-16(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -768(%rbp)
	movq	-768(%rbp), %rax
	addq	$0, %rax
	addq	$24, %rax
	movq	%rax, -776(%rbp)
	movq	-776(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -784(%rbp)
	movq	-784(%rbp), %rax
	movq	$0, %rcx
	cmpq	%rcx, %rax
	setne	-792(%rbp)
	andq	$1, -792(%rbp)
	movq	-792(%rbp), %rax
	cmpq	$0, %rax
	jne	balance._nn289
	jmp	balance._n288
	.text
balance._nn289:
	movq	-784(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, (%rax)
	movq	-32(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -808(%rbp)
	movq	-808(%rbp), %rax
	addq	$0, %rax
	addq	$16, %rax
	movq	%rax, -816(%rbp)
	movq	-816(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -824(%rbp)
	movq	-824(%rbp), %rax
	movq	$0, %rcx
	cmpq	%rcx, %rax
	setne	-832(%rbp)
	andq	$1, -832(%rbp)
	movq	-832(%rbp), %rax
	cmpq	$0, %rax
	jne	balance._nn296
	jmp	balance._n295
	.text
balance._nn296:
	movq	-824(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, (%rax)
	movq	-16(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -848(%rbp)
	movq	-848(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, -856(%rbp)
	movq	-856(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -864(%rbp)
	movq	-864(%rbp), %rax
	movq	$0, %rcx
	cmpq	%rcx, %rax
	setne	-872(%rbp)
	andq	$1, -872(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -880(%rbp)
	movq	-880(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, -888(%rbp)
	movq	-888(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -896(%rbp)
	movq	-896(%rbp), %rax
	movq	$0, %rcx
	cmpq	%rcx, %rax
	sete	-904(%rbp)
	andq	$1, -904(%rbp)
	movq	-872(%rbp), %rax
	movq	-904(%rbp), %rcx
	andq	%rcx, %rax
	movq	%rax, -912(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -920(%rbp)
	movq	-920(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, -928(%rbp)
	movq	-928(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -936(%rbp)
	movq	-936(%rbp), %rax
	movq	$0, %rcx
	cmpq	%rcx, %rax
	sete	-944(%rbp)
	andq	$1, -944(%rbp)
	movq	-912(%rbp), %rax
	movq	-944(%rbp), %rcx
	andq	%rcx, %rax
	movq	%rax, -952(%rbp)
	movq	-952(%rbp), %rax
	cmpq	$0, %rax
	jne	balance._then341
	jmp	balance._else340
	.text
balance._then341:
	movq	-40(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -960(%rbp)
	movq	-960(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, (%rax)
	movq	-32(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -976(%rbp)
	movq	-976(%rbp), %rax
	addq	$0, %rax
	addq	$16, %rax
	movq	%rax, -984(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -992(%rbp)
	movq	-992(%rbp), %rax
	addq	$0, %rax
	addq	$16, %rax
	movq	%rax, -1000(%rbp)
	movq	-1000(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -1008(%rbp)
	movq	-1008(%rbp), %rcx
	movq	-984(%rbp), %rax
	movq	%rcx, (%rax)
	movq	-16(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -1024(%rbp)
	movq	-1024(%rbp), %rax
	addq	$0, %rax
	addq	$24, %rax
	movq	%rax, -1032(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -1040(%rbp)
	movq	-1040(%rbp), %rax
	addq	$0, %rax
	addq	$24, %rax
	movq	%rax, -1048(%rbp)
	movq	-1048(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -1056(%rbp)
	movq	-1056(%rbp), %rcx
	movq	-1032(%rbp), %rax
	movq	%rcx, (%rax)
	movq	-40(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -1072(%rbp)
	movq	-1072(%rbp), %rax
	addq	$0, %rax
	addq	$24, %rax
	movq	%rax, -1080(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -1088(%rbp)
	movq	-1088(%rbp), %rcx
	movq	-1080(%rbp), %rax
	movq	%rcx, (%rax)
	movq	-40(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -1104(%rbp)
	movq	-1104(%rbp), %rax
	addq	$0, %rax
	addq	$16, %rax
	movq	%rax, -1112(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -1120(%rbp)
	movq	-1120(%rbp), %rcx
	movq	-1112(%rbp), %rax
	movq	%rcx, (%rax)
	movq	-32(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -1136(%rbp)
	movq	-1136(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, -1144(%rbp)
	movq	$1, %rcx
	movq	-1144(%rbp), %rax
	movq	%rcx, (%rax)
	jmp	balance._merge339
	.text
balance._else340:
	jmp	balance._merge339
	.text
balance._merge339:
	jmp	balance._m294
	.text
balance._n295:
	jmp	balance._m294
	.text
balance._m294:
	movq	-32(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -1160(%rbp)
	movq	-1160(%rbp), %rax
	addq	$0, %rax
	addq	$24, %rax
	movq	%rax, -1168(%rbp)
	movq	-1168(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -1176(%rbp)
	movq	-1176(%rbp), %rax
	movq	$0, %rcx
	cmpq	%rcx, %rax
	setne	-1184(%rbp)
	andq	$1, -1184(%rbp)
	movq	-1184(%rbp), %rax
	cmpq	$0, %rax
	jne	balance._nn345
	jmp	balance._n344
	.text
balance._nn345:
	movq	-1176(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, (%rax)
	movq	-16(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -1200(%rbp)
	movq	-1200(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, -1208(%rbp)
	movq	-1208(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -1216(%rbp)
	movq	-1216(%rbp), %rax
	movq	$0, %rcx
	cmpq	%rcx, %rax
	setne	-1224(%rbp)
	andq	$1, -1224(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -1232(%rbp)
	movq	-1232(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, -1240(%rbp)
	movq	-1240(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -1248(%rbp)
	movq	-1248(%rbp), %rax
	movq	$0, %rcx
	cmpq	%rcx, %rax
	sete	-1256(%rbp)
	andq	$1, -1256(%rbp)
	movq	-1224(%rbp), %rax
	movq	-1256(%rbp), %rcx
	andq	%rcx, %rax
	movq	%rax, -1264(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -1272(%rbp)
	movq	-1272(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, -1280(%rbp)
	movq	-1280(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -1288(%rbp)
	movq	-1288(%rbp), %rax
	movq	$0, %rcx
	cmpq	%rcx, %rax
	sete	-1296(%rbp)
	andq	$1, -1296(%rbp)
	movq	-1264(%rbp), %rax
	movq	-1296(%rbp), %rcx
	andq	%rcx, %rax
	movq	%rax, -1304(%rbp)
	movq	-1304(%rbp), %rax
	cmpq	$0, %rax
	jne	balance._then380
	jmp	balance._else379
	.text
balance._then380:
	movq	-32(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -1312(%rbp)
	movq	-1312(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, (%rax)
	movq	-16(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -1328(%rbp)
	movq	-1328(%rbp), %rax
	addq	$0, %rax
	addq	$24, %rax
	movq	%rax, -1336(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -1344(%rbp)
	movq	-1344(%rbp), %rax
	addq	$0, %rax
	addq	$16, %rax
	movq	%rax, -1352(%rbp)
	movq	-1352(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -1360(%rbp)
	movq	-1360(%rbp), %rcx
	movq	-1336(%rbp), %rax
	movq	%rcx, (%rax)
	movq	-32(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -1376(%rbp)
	movq	-1376(%rbp), %rax
	addq	$0, %rax
	addq	$16, %rax
	movq	%rax, -1384(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -1392(%rbp)
	movq	-1392(%rbp), %rcx
	movq	-1384(%rbp), %rax
	movq	%rcx, (%rax)
	movq	-40(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -1408(%rbp)
	movq	-1408(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, -1416(%rbp)
	movq	$1, %rcx
	movq	-1416(%rbp), %rax
	movq	%rcx, (%rax)
	jmp	balance._merge378
	.text
balance._else379:
	jmp	balance._merge378
	.text
balance._merge378:
	jmp	balance._m343
	.text
balance._n344:
	jmp	balance._m343
	.text
balance._m343:
	jmp	balance._m287
	.text
balance._n288:
	jmp	balance._m287
	.text
balance._m287:
	movq	-24(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -1432(%rbp)
	movq	-1432(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	_insert
_insert:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$664, %rsp
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
	movq	%rsp, -40(%rbp)
	movq	-8(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, (%rax)
	movq	-16(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, (%rax)
	movq	-32(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -72(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -80(%rbp)
	movq	-80(%rbp), %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -96(%rbp)
	movq	-72(%rbp), %rax
	movq	-96(%rbp), %rcx
	cmpq	%rcx, %rax
	setl	-104(%rbp)
	andq	$1, -104(%rbp)
	movq	-104(%rbp), %rax
	cmpq	$0, %rax
	jne	insert._then183
	jmp	insert._else182
	.text
insert._then183:
	movq	-24(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -112(%rbp)
	movq	-112(%rbp), %rax
	addq	$0, %rax
	addq	$16, %rax
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -128(%rbp)
	movq	-128(%rbp), %rax
	movq	$0, %rcx
	cmpq	%rcx, %rax
	setne	-136(%rbp)
	andq	$1, -136(%rbp)
	movq	-136(%rbp), %rax
	cmpq	$0, %rax
	jne	insert._nn116
	jmp	insert._n115
	.text
insert._nn116:
	movq	-128(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, (%rax)
	movq	-24(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -152(%rbp)
	movq	-152(%rbp), %rax
	addq	$0, %rax
	addq	$16, %rax
	movq	%rax, -160(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -168(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -176(%rbp)
	movq	-176(%rbp), %rax
	movq	%rax, %rdi
	movq	-168(%rbp), %rax
	movq	%rax, %rsi
	callq	_insert
	movq	%rax, -184(%rbp)
	movq	-184(%rbp), %rcx
	movq	-160(%rbp), %rax
	movq	%rcx, (%rax)
	movq	-24(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -200(%rbp)
	movq	-200(%rbp), %rax
	movq	%rax, %rdi
	callq	_balance
	movq	%rax, -208(%rbp)
	movq	-208(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, (%rax)
	jmp	insert._m114
	.text
insert._n115:
	movq	-24(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -224(%rbp)
	movq	-224(%rbp), %rax
	addq	$0, %rax
	addq	$16, %rax
	movq	%rax, -232(%rbp)
	movq	$32, %rax
	movq	%rax, %rdi
	callq	_oat_malloc
	movq	%rax, -240(%rbp)
	movq	-240(%rbp), %rax
	movq	%rax, -248(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -256(%rbp)
	movq	-248(%rbp), %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, -264(%rbp)
	movq	-256(%rbp), %rax
	movq	%rax, -272(%rbp)
	movq	-272(%rbp), %rcx
	movq	-264(%rbp), %rax
	movq	%rcx, (%rax)
	movq	-248(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, -288(%rbp)
	movq	$0, %rax
	movq	%rax, -296(%rbp)
	movq	-296(%rbp), %rcx
	movq	-288(%rbp), %rax
	movq	%rcx, (%rax)
	movq	-248(%rbp), %rax
	addq	$0, %rax
	addq	$16, %rax
	movq	%rax, -312(%rbp)
	movq	$0, %rax
	movq	%rax, -320(%rbp)
	movq	-320(%rbp), %rcx
	movq	-312(%rbp), %rax
	movq	%rcx, (%rax)
	movq	-248(%rbp), %rax
	addq	$0, %rax
	addq	$24, %rax
	movq	%rax, -336(%rbp)
	movq	$0, %rax
	movq	%rax, -344(%rbp)
	movq	-344(%rbp), %rcx
	movq	-336(%rbp), %rax
	movq	%rcx, (%rax)
	movq	-248(%rbp), %rcx
	movq	-232(%rbp), %rax
	movq	%rcx, (%rax)
	jmp	insert._m114
	.text
insert._m114:
	jmp	insert._merge181
	.text
insert._else182:
	movq	-32(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -368(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -376(%rbp)
	movq	-376(%rbp), %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, -384(%rbp)
	movq	-384(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -392(%rbp)
	movq	-368(%rbp), %rax
	movq	-392(%rbp), %rcx
	cmpq	%rcx, %rax
	setg	-400(%rbp)
	andq	$1, -400(%rbp)
	movq	-400(%rbp), %rax
	cmpq	$0, %rax
	jne	insert._then180
	jmp	insert._else179
	.text
insert._then180:
	movq	-24(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -408(%rbp)
	movq	-408(%rbp), %rax
	addq	$0, %rax
	addq	$24, %rax
	movq	%rax, -416(%rbp)
	movq	-416(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -424(%rbp)
	movq	-424(%rbp), %rax
	movq	$0, %rcx
	cmpq	%rcx, %rax
	setne	-432(%rbp)
	andq	$1, -432(%rbp)
	movq	-432(%rbp), %rax
	cmpq	$0, %rax
	jne	insert._nn151
	jmp	insert._n150
	.text
insert._nn151:
	movq	-424(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, (%rax)
	movq	-24(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -448(%rbp)
	movq	-448(%rbp), %rax
	addq	$0, %rax
	addq	$24, %rax
	movq	%rax, -456(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -464(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -472(%rbp)
	movq	-472(%rbp), %rax
	movq	%rax, %rdi
	movq	-464(%rbp), %rax
	movq	%rax, %rsi
	callq	_insert
	movq	%rax, -480(%rbp)
	movq	-480(%rbp), %rcx
	movq	-456(%rbp), %rax
	movq	%rcx, (%rax)
	movq	-24(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -496(%rbp)
	movq	-496(%rbp), %rax
	movq	%rax, %rdi
	callq	_balance
	movq	%rax, -504(%rbp)
	movq	-504(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, (%rax)
	jmp	insert._m149
	.text
insert._n150:
	movq	-24(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -520(%rbp)
	movq	-520(%rbp), %rax
	addq	$0, %rax
	addq	$24, %rax
	movq	%rax, -528(%rbp)
	movq	$32, %rax
	movq	%rax, %rdi
	callq	_oat_malloc
	movq	%rax, -536(%rbp)
	movq	-536(%rbp), %rax
	movq	%rax, -544(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -552(%rbp)
	movq	-544(%rbp), %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, -560(%rbp)
	movq	-552(%rbp), %rax
	movq	%rax, -568(%rbp)
	movq	-568(%rbp), %rcx
	movq	-560(%rbp), %rax
	movq	%rcx, (%rax)
	movq	-544(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, -584(%rbp)
	movq	$0, %rax
	movq	%rax, -592(%rbp)
	movq	-592(%rbp), %rcx
	movq	-584(%rbp), %rax
	movq	%rcx, (%rax)
	movq	-544(%rbp), %rax
	addq	$0, %rax
	addq	$16, %rax
	movq	%rax, -608(%rbp)
	movq	$0, %rax
	movq	%rax, -616(%rbp)
	movq	-616(%rbp), %rcx
	movq	-608(%rbp), %rax
	movq	%rcx, (%rax)
	movq	-544(%rbp), %rax
	addq	$0, %rax
	addq	$24, %rax
	movq	%rax, -632(%rbp)
	movq	$0, %rax
	movq	%rax, -640(%rbp)
	movq	-640(%rbp), %rcx
	movq	-632(%rbp), %rax
	movq	%rcx, (%rax)
	movq	-544(%rbp), %rcx
	movq	-528(%rbp), %rax
	movq	%rcx, (%rax)
	jmp	insert._m149
	.text
insert._m149:
	jmp	insert._merge178
	.text
insert._else179:
	jmp	insert._merge178
	.text
insert._merge178:
	jmp	insert._merge181
	.text
insert._merge181:
	movq	-24(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -664(%rbp)
	movq	-664(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	_program
_program:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$1016, %rsp
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
	movq	-8(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, (%rax)
	movq	-16(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, (%rax)
	movq	$32, %rax
	movq	%rax, %rdi
	callq	_oat_malloc
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	$32, %rax
	movq	%rax, %rdi
	callq	_oat_malloc
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	$32, %rax
	movq	%rax, %rdi
	callq	_oat_malloc
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, -120(%rbp)
	movq	$5, %rax
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rcx
	movq	-120(%rbp), %rax
	movq	%rcx, (%rax)
	movq	-112(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, -144(%rbp)
	movq	$0, %rax
	movq	%rax, -152(%rbp)
	movq	-152(%rbp), %rcx
	movq	-144(%rbp), %rax
	movq	%rcx, (%rax)
	movq	-112(%rbp), %rax
	addq	$0, %rax
	addq	$16, %rax
	movq	%rax, -168(%rbp)
	movq	$0, %rax
	movq	%rax, -176(%rbp)
	movq	-176(%rbp), %rcx
	movq	-168(%rbp), %rax
	movq	%rcx, (%rax)
	movq	-112(%rbp), %rax
	addq	$0, %rax
	addq	$24, %rax
	movq	%rax, -192(%rbp)
	movq	$0, %rax
	movq	%rax, -200(%rbp)
	movq	-200(%rbp), %rcx
	movq	-192(%rbp), %rax
	movq	%rcx, (%rax)
	movq	$32, %rax
	movq	%rax, %rdi
	callq	_oat_malloc
	movq	%rax, -216(%rbp)
	movq	-216(%rbp), %rax
	movq	%rax, -224(%rbp)
	movq	-224(%rbp), %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, -232(%rbp)
	movq	$15, %rax
	movq	%rax, -240(%rbp)
	movq	-240(%rbp), %rcx
	movq	-232(%rbp), %rax
	movq	%rcx, (%rax)
	movq	-224(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, -256(%rbp)
	movq	$0, %rax
	movq	%rax, -264(%rbp)
	movq	-264(%rbp), %rcx
	movq	-256(%rbp), %rax
	movq	%rcx, (%rax)
	movq	-224(%rbp), %rax
	addq	$0, %rax
	addq	$16, %rax
	movq	%rax, -280(%rbp)
	movq	$0, %rax
	movq	%rax, -288(%rbp)
	movq	-288(%rbp), %rcx
	movq	-280(%rbp), %rax
	movq	%rcx, (%rax)
	movq	-224(%rbp), %rax
	addq	$0, %rax
	addq	$24, %rax
	movq	%rax, -304(%rbp)
	movq	$0, %rax
	movq	%rax, -312(%rbp)
	movq	-312(%rbp), %rcx
	movq	-304(%rbp), %rax
	movq	%rcx, (%rax)
	movq	-96(%rbp), %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, -328(%rbp)
	movq	$10, %rax
	movq	%rax, -336(%rbp)
	movq	-336(%rbp), %rcx
	movq	-328(%rbp), %rax
	movq	%rcx, (%rax)
	movq	-96(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, -352(%rbp)
	movq	$1, %rax
	movq	%rax, -360(%rbp)
	movq	-360(%rbp), %rcx
	movq	-352(%rbp), %rax
	movq	%rcx, (%rax)
	movq	-96(%rbp), %rax
	addq	$0, %rax
	addq	$16, %rax
	movq	%rax, -376(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -384(%rbp)
	movq	-384(%rbp), %rcx
	movq	-376(%rbp), %rax
	movq	%rcx, (%rax)
	movq	-96(%rbp), %rax
	addq	$0, %rax
	addq	$24, %rax
	movq	%rax, -400(%rbp)
	movq	-224(%rbp), %rax
	movq	%rax, -408(%rbp)
	movq	-408(%rbp), %rcx
	movq	-400(%rbp), %rax
	movq	%rcx, (%rax)
	movq	$32, %rax
	movq	%rax, %rdi
	callq	_oat_malloc
	movq	%rax, -424(%rbp)
	movq	-424(%rbp), %rax
	movq	%rax, -432(%rbp)
	movq	$32, %rax
	movq	%rax, %rdi
	callq	_oat_malloc
	movq	%rax, -440(%rbp)
	movq	-440(%rbp), %rax
	movq	%rax, -448(%rbp)
	movq	-448(%rbp), %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, -456(%rbp)
	movq	$25, %rax
	movq	%rax, -464(%rbp)
	movq	-464(%rbp), %rcx
	movq	-456(%rbp), %rax
	movq	%rcx, (%rax)
	movq	-448(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, -480(%rbp)
	movq	$0, %rax
	movq	%rax, -488(%rbp)
	movq	-488(%rbp), %rcx
	movq	-480(%rbp), %rax
	movq	%rcx, (%rax)
	movq	-448(%rbp), %rax
	addq	$0, %rax
	addq	$16, %rax
	movq	%rax, -504(%rbp)
	movq	$0, %rax
	movq	%rax, -512(%rbp)
	movq	-512(%rbp), %rcx
	movq	-504(%rbp), %rax
	movq	%rcx, (%rax)
	movq	-448(%rbp), %rax
	addq	$0, %rax
	addq	$24, %rax
	movq	%rax, -528(%rbp)
	movq	$0, %rax
	movq	%rax, -536(%rbp)
	movq	-536(%rbp), %rcx
	movq	-528(%rbp), %rax
	movq	%rcx, (%rax)
	movq	$32, %rax
	movq	%rax, %rdi
	callq	_oat_malloc
	movq	%rax, -552(%rbp)
	movq	-552(%rbp), %rax
	movq	%rax, -560(%rbp)
	movq	-560(%rbp), %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, -568(%rbp)
	movq	$35, %rax
	movq	%rax, -576(%rbp)
	movq	-576(%rbp), %rcx
	movq	-568(%rbp), %rax
	movq	%rcx, (%rax)
	movq	-560(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, -592(%rbp)
	movq	$0, %rax
	movq	%rax, -600(%rbp)
	movq	-600(%rbp), %rcx
	movq	-592(%rbp), %rax
	movq	%rcx, (%rax)
	movq	-560(%rbp), %rax
	addq	$0, %rax
	addq	$16, %rax
	movq	%rax, -616(%rbp)
	movq	$0, %rax
	movq	%rax, -624(%rbp)
	movq	-624(%rbp), %rcx
	movq	-616(%rbp), %rax
	movq	%rcx, (%rax)
	movq	-560(%rbp), %rax
	addq	$0, %rax
	addq	$24, %rax
	movq	%rax, -640(%rbp)
	movq	$0, %rax
	movq	%rax, -648(%rbp)
	movq	-648(%rbp), %rcx
	movq	-640(%rbp), %rax
	movq	%rcx, (%rax)
	movq	-432(%rbp), %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, -664(%rbp)
	movq	$30, %rax
	movq	%rax, -672(%rbp)
	movq	-672(%rbp), %rcx
	movq	-664(%rbp), %rax
	movq	%rcx, (%rax)
	movq	-432(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, -688(%rbp)
	movq	$1, %rax
	movq	%rax, -696(%rbp)
	movq	-696(%rbp), %rcx
	movq	-688(%rbp), %rax
	movq	%rcx, (%rax)
	movq	-432(%rbp), %rax
	addq	$0, %rax
	addq	$16, %rax
	movq	%rax, -712(%rbp)
	movq	-448(%rbp), %rax
	movq	%rax, -720(%rbp)
	movq	-720(%rbp), %rcx
	movq	-712(%rbp), %rax
	movq	%rcx, (%rax)
	movq	-432(%rbp), %rax
	addq	$0, %rax
	addq	$24, %rax
	movq	%rax, -736(%rbp)
	movq	-560(%rbp), %rax
	movq	%rax, -744(%rbp)
	movq	-744(%rbp), %rcx
	movq	-736(%rbp), %rax
	movq	%rcx, (%rax)
	movq	-80(%rbp), %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, -760(%rbp)
	movq	$20, %rax
	movq	%rax, -768(%rbp)
	movq	-768(%rbp), %rcx
	movq	-760(%rbp), %rax
	movq	%rcx, (%rax)
	movq	-80(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, -784(%rbp)
	movq	$1, %rax
	movq	%rax, -792(%rbp)
	movq	-792(%rbp), %rcx
	movq	-784(%rbp), %rax
	movq	%rcx, (%rax)
	movq	-80(%rbp), %rax
	addq	$0, %rax
	addq	$16, %rax
	movq	%rax, -808(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -816(%rbp)
	movq	-816(%rbp), %rcx
	movq	-808(%rbp), %rax
	movq	%rcx, (%rax)
	movq	-80(%rbp), %rax
	addq	$0, %rax
	addq	$24, %rax
	movq	%rax, -832(%rbp)
	movq	-432(%rbp), %rax
	movq	%rax, -840(%rbp)
	movq	-840(%rbp), %rcx
	movq	-832(%rbp), %rax
	movq	%rcx, (%rax)
	movq	-80(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, (%rax)
	leaq	__str_arr79(%rip), %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, -864(%rbp)
	movq	-864(%rbp), %rax
	movq	%rax, %rdi
	callq	_print_string
	movq	-40(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -880(%rbp)
	movq	-880(%rbp), %rax
	movq	%rax, %rdi
	callq	_print_tree
	movq	-40(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -896(%rbp)
	movq	-896(%rbp), %rax
	movq	%rax, %rdi
	movq	$17, %rax
	movq	%rax, %rsi
	callq	_insert
	movq	%rax, -904(%rbp)
	movq	-904(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	%rcx, (%rax)
	movq	-48(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -920(%rbp)
	movq	-920(%rbp), %rax
	movq	%rax, %rdi
	movq	$3, %rax
	movq	%rax, %rsi
	callq	_insert
	movq	%rax, -928(%rbp)
	movq	-928(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	%rcx, (%rax)
	movq	-48(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -944(%rbp)
	movq	-944(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, -952(%rbp)
	movq	$1, %rcx
	movq	-952(%rbp), %rax
	movq	%rcx, (%rax)
	leaq	__str_arr94(%rip), %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, -968(%rbp)
	movq	-968(%rbp), %rax
	movq	%rax, %rdi
	callq	_print_string
	movq	-48(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -984(%rbp)
	movq	-984(%rbp), %rax
	movq	%rax, %rdi
	callq	_print_tree
	movq	-48(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -1000(%rbp)
	movq	-1000(%rbp), %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, -1008(%rbp)
	movq	-1008(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -1016(%rbp)
	movq	-1016(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	