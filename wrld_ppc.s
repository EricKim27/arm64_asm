	.abiversion 2
	.file	"-"
	.text
	.globl	main                            # -- Begin function main
	.p2align	4
	.type	main,@function
main:                                   # @main
.Lfunc_begin0:
	.cfi_startproc
.Lfunc_gep0:
	addis 2, 12, .TOC.-.Lfunc_gep0@ha
	addi 2, 2, .TOC.-.Lfunc_gep0@l
.Lfunc_lep0:
	.localentry	main, .Lfunc_lep0-.Lfunc_gep0
# %bb.0:
	mflr 0
	std 31, -8(1)
	stdu 1, -112(1)
	std 0, 128(1)
	.cfi_def_cfa_offset 112
	.cfi_offset r31, -8
	.cfi_offset lr, 16
	mr	31, 1
	.cfi_def_cfa_register r31
	li 3, 0
	stw 3, 100(31)
	addis 3, 2, .L.str@toc@ha
	addi 3, 3, .L.str@toc@l
	bl printf
	nop
	li 3, 0
	addi 1, 1, 112
	ld 0, 16(1)
	ld 31, -8(1)
	mtlr 0
	blr
	.long	0
	.quad	0
.Lfunc_end0:
	.size	main, .Lfunc_end0-.Lfunc_begin0
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"hello world\n"
	.size	.L.str, 13

	.ident	"clang version 20.1.8 (Fedora 20.1.8-4.fc42)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym printf
