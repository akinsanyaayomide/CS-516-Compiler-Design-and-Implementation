	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 11, 0
	.globl	_factorial              ## -- Begin function factorial
	.p2align	4, 0x90
_factorial:                             ## @factorial
## %bb.0:
	testq	%rdi, %rdi
	je	LBB0_1
## %bb.2:                               ## %recurse
	pushq	%rbx
	movq	%rdi, %rbx
	decq	%rdi
	callq	_factorial
	imulq	%rbx, %rax
	popq	%rbx
	retq
LBB0_1:                                 ## %ret1
	movl	$1, %eax
	retq
                                        ## -- End function
	.globl	_main                   ## -- Begin function main
	.p2align	4, 0x90
_main:                                  ## @main
## %bb.0:
	pushq	%rax
	movl	$5, %edi
	callq	_factorial
	popq	%rcx
	retq
                                        ## -- End function
.subsections_via_symbols
