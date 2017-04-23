	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 12
	.globl	_start_compile
	.p2align	4, 0x90
_start_compile:                         ## @start_compile
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp0:
	.cfi_def_cfa_offset 16
Ltmp1:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp2:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	leaq	L_.str(%rip), %rsi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	_fopen
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	_start_lexical_analysis
	movq	-16(%rbp), %rdi
	callq	_fclose
	movl	%eax, -20(%rbp)         ## 4-byte Spill
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"r"

	.comm	_builtString,128,4      ## @builtString
	.comm	_builtNumber,128,4      ## @builtNumber
	.comm	_lexum,16,3             ## @lexum
	.comm	_type,16,3              ## @type
	.comm	_scope,16,3             ## @scope

.subsections_via_symbols