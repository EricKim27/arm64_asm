	.abiversion 2
	.file	"fwrite.c"
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
	.cfi_def_cfa_offset 112
	.cfi_offset lr, 16
	.cfi_offset r30, -16
	std 30, -16(1)                          # 8-byte Folded Spill
	stdu 1, -112(1)
	addis 3, 2, .L_MergedGlobals@toc@ha
	li 4, 577
	li 5, 420
	std 0, 128(1)
	addi 30, 3, .L_MergedGlobals@toc@l
	mr	3, 30
	bl open
	nop
	cmpwi	3, -1
	beq	0, .LBB0_2
# %bb.1:
	addi 4, 30, 11
	li 5, 13
	mr	30, 3
	bl write
	nop
	mr	3, 30
	bl close
	nop
	li 3, 0
	b .LBB0_3
.LBB0_2:
	li 3, 1
.LBB0_3:
	addi 1, 1, 112
	ld 0, 16(1)
	ld 30, -16(1)                           # 8-byte Folded Reload
	mtlr 0
	blr
	.long	0
	.quad	0
.Lfunc_end0:
	.size	main, .Lfunc_end0-.Lfunc_begin0
	.cfi_endproc
                                        # -- End function
	.type	.L_MergedGlobals,@object        # @_MergedGlobals
	.section	.rodata,"a",@progbits
.L_MergedGlobals:
	.asciz	"myfile.txt"
	.asciz	"example text\n"
	.size	.L_MergedGlobals, 25

.set .L.str, .L_MergedGlobals
	.size	.L.str, 11
.set .L.str.1, .L_MergedGlobals+11
	.size	.L.str.1, 14
	.ident	"clang version 20.1.8 (Fedora 20.1.8-4.fc42)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym .L_MergedGlobals
