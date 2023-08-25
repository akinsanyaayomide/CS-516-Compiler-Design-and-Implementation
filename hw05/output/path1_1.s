	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 11, 0
	.globl	_program                ## -- Begin function program
	.p2align	4, 0x90
_program:                               ## @program
## %bb.0:
	movl	$17, %eax
	retq
                                        ## -- End function
.subsections_via_symbols
