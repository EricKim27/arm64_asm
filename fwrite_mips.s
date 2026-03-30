	.abicalls
	.section	.mdebug.abi64,"",@progbits
	.nan	legacy
	.text
	.file	"fwrite.c"
	.globl	main                            # -- Begin function main
	.p2align	3
	.type	main,@function
	.set	nomicromips
	.set	nomips16
	.ent	main
main:                                   # @main
	.frame	$fp,32,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	daddiu	$sp, $sp, -32
	sd	$ra, 24($sp)                    # 8-byte Folded Spill
	sd	$fp, 16($sp)                    # 8-byte Folded Spill
	sd	$gp, 8($sp)                     # 8-byte Folded Spill
	sd	$16, 0($sp)                     # 8-byte Folded Spill
	move	$fp, $sp
	lui	$1, %hi(%neg(%gp_rel(main)))
	daddu	$1, $1, $25
	daddiu	$gp, $1, %lo(%neg(%gp_rel(main)))
	ld	$1, %got_page(.L.str)($gp)
	daddiu	$4, $1, %got_ofst(.L.str)
	ld	$25, %call16(open)($gp)
	daddiu	$5, $zero, 577
	.reloc .Ltmp0, R_MIPS_JALR, open
.Ltmp0:
	jalr	$25
	daddiu	$6, $zero, 420
	addiu	$1, $zero, -1
	beq	$2, $1, .LBB0_2
	nop
# %bb.1:
	sll	$16, $2, 0
	ld	$1, %got_page(.L.str.1)($gp)
	daddiu	$5, $1, %got_ofst(.L.str.1)
	ld	$25, %call16(write)($gp)
	move	$4, $16
	.reloc .Ltmp1, R_MIPS_JALR, write
.Ltmp1:
	jalr	$25
	daddiu	$6, $zero, 13
	ld	$25, %call16(close)($gp)
	.reloc .Ltmp2, R_MIPS_JALR, close
.Ltmp2:
	jalr	$25
	move	$4, $16
	b	.LBB0_3
	addiu	$2, $zero, 0
.LBB0_2:
	addiu	$2, $zero, 1
.LBB0_3:
	sll	$2, $2, 0
	move	$sp, $fp
	ld	$16, 0($sp)                     # 8-byte Folded Reload
	ld	$gp, 8($sp)                     # 8-byte Folded Reload
	ld	$fp, 16($sp)                    # 8-byte Folded Reload
	ld	$ra, 24($sp)                    # 8-byte Folded Reload
	jr	$ra
	daddiu	$sp, $sp, 32
	.set	at
	.set	macro
	.set	reorder
	.end	main
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"myfile.txt"
	.size	.L.str, 11

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"example text\n"
	.size	.L.str.1, 14

	.ident	"clang version 20.1.8 (Fedora 20.1.8-4.fc42)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.text
