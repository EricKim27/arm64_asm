	.abiversion 2
	.file	"strplay.c"
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
	.cfi_def_cfa_offset 160
	.cfi_offset lr, 16
	.cfi_offset r25, -56
	.cfi_offset r26, -48
	.cfi_offset r27, -40
	.cfi_offset r28, -32
	.cfi_offset r29, -24
	.cfi_offset r30, -16
	std 25, -56(1)                          # 8-byte Folded Spill
	std 26, -48(1)                          # 8-byte Folded Spill
	std 27, -40(1)                          # 8-byte Folded Spill
	std 28, -32(1)                          # 8-byte Folded Spill
	std 29, -24(1)                          # 8-byte Folded Spill
	std 30, -16(1)                          # 8-byte Folded Spill
	stdu 1, -160(1)
	li 3, 100
	std 0, 176(1)
	bl malloc
	nop
	cmpldi	3, 0
	beq	0, .LBB0_9
# %bb.1:
	mr	30, 3
	xxlxor 0, 0, 0
	li 3, 84
	li 4, 72
	stxvd2x 0, 30, 3
	addis 3, 2, msg@toc@ha
	stxvd2x 0, 30, 4
	li 4, 16
	addi 3, 3, msg@toc@l
	lxvd2x 0, 3, 4
	stxvd2x 0, 30, 4
	li 4, 32
	lxvd2x 0, 3, 4
	stxvd2x 0, 30, 4
	li 4, 48
	lxvd2x 0, 3, 4
	stxvd2x 0, 30, 4
	lxvd2x 0, 0, 3
	lis 3, 46
	mr	4, 30
	ori 3, 3, 30063
	rldic 3, 3, 32, 10
	stxvd2x 0, 0, 30
	oris 3, 3, 31008
	ori 3, 3, 25970
	std 3, 64(30)
	addis 3, 2, .L_MergedGlobals@toc@ha
	addi 29, 3, .L_MergedGlobals@toc@l
	addi 3, 29, 20
	bl printf
	nop
	addi 3, 30, -1
	li 4, 97
	b .LBB0_3
	.p2align	5
.LBB0_2:                                #   in Loop: Header=BB0_3 Depth=1
	stb 4, 0(3)
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	lbzu 5, 1(3)
	cmplwi	5, 101
	beq	0, .LBB0_2
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	cmplwi	5, 0
	bne	0, .LBB0_3
# %bb.5:
	addi 3, 29, 41
	mr	4, 30
	bl printf
	nop
	li 3, 800
	bl malloc
	nop
	mr	28, 3
	addi 3, 29, 2
	bl puts
	nop
	mr	3, 30
	mr	4, 29
	bl strtok
	nop
	cmpldi	3, 0
	beq	0, .LBB0_10
# %bb.6:
	mr	27, 3
	addi 25, 28, -8
	li 26, 0
	.p2align	4
.LBB0_7:                                # =>This Inner Loop Header: Depth=1
	mr	3, 27
	bl strlen
	nop
	addi 3, 3, 1
	bl malloc
	nop
	mr	4, 27
	stdu 3, 8(25)
	bl strcpy
	nop
	li 3, 0
	mr	4, 29
	bl strtok
	nop
	cmpldi	3, 0
	mr	27, 3
	addi 26, 26, 1
	bne	0, .LBB0_7
# %bb.8:
	cmplwi	26, 0
	bne	0, .LBB0_11
	b .LBB0_13
.LBB0_9:
	li 3, 1
	b .LBB0_14
.LBB0_10:
	li 26, 0
	cmplwi	26, 0
	beq	0, .LBB0_13
.LBB0_11:
	clrldi	29, 26, 32
	addi 28, 28, -8
	.p2align	5
.LBB0_12:                               # =>This Inner Loop Header: Depth=1
	ldu 3, 8(28)
	bl puts
	nop
	addi 29, 29, -1
	cmpldi	29, 0
	bc 12, 1, .LBB0_12
.LBB0_13:
	mr	3, 30
	bl free
	nop
	li 3, 0
.LBB0_14:
	addi 1, 1, 160
	ld 0, 16(1)
	ld 30, -16(1)                           # 8-byte Folded Reload
	ld 29, -24(1)                           # 8-byte Folded Reload
	ld 28, -32(1)                           # 8-byte Folded Reload
	ld 27, -40(1)                           # 8-byte Folded Reload
	ld 26, -48(1)                           # 8-byte Folded Reload
	ld 25, -56(1)                           # 8-byte Folded Reload
	mtlr 0
	blr
	.long	0
	.quad	0
.Lfunc_end0:
	.size	main, .Lfunc_end0-.Lfunc_begin0
	.cfi_endproc
                                        # -- End function
	.type	msg,@object                     # @msg
	.section	.rodata,"a",@progbits
	.globl	msg
msg:
	.asciz	"Apples are red, blueberries are blue, I am pretty good, and so are you."
	.size	msg, 72

	.type	.L_MergedGlobals,@object        # @_MergedGlobals
.L_MergedGlobals:
	.asciz	" "
	.asciz	"Splitting strings"
	.asciz	"Original String: %s\n"
	.asciz	"Modified string: %s\n"
	.size	.L_MergedGlobals, 62

.set .L.str.3, .L_MergedGlobals
	.size	.L.str.3, 2
.set .Lstr, .L_MergedGlobals+2
	.size	.Lstr, 18
.set .L.str, .L_MergedGlobals+20
	.size	.L.str, 21
.set .L.str.1, .L_MergedGlobals+41
	.size	.L.str.1, 21
	.ident	"clang version 20.1.8 (Fedora 20.1.8-4.fc42)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym .L_MergedGlobals
