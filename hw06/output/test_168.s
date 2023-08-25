	.text
	.globl	_f1
_f1:
	pushq	%rbp
	movq	%rsp, %rbp
	callq	_f2
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	_f2
_f2:
	pushq	%rbp
	movq	%rsp, %rbp
	callq	_f3
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	_f3
_f3:
	pushq	%rbp
	movq	%rsp, %rbp
	callq	_f4
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	_f4
_f4:
	pushq	%rbp
	movq	%rsp, %rbp
	callq	_f5
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	_f5
_f5:
	pushq	%rbp
	movq	%rsp, %rbp
	callq	_f6
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	_f6
_f6:
	pushq	%rbp
	movq	%rsp, %rbp
	callq	_f7
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	_f7
_f7:
	pushq	%rbp
	movq	%rsp, %rbp
	callq	_f8
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	_f8
_f8:
	pushq	%rbp
	movq	%rsp, %rbp
	callq	_f9
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	_f9
_f9:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	$31, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	_program
_program:
	pushq	%rbp
	movq	%rsp, %rbp
	callq	_f1
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	