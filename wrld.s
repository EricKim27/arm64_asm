	.abicalls
	.section	.mdebug.abi64,"",@progbits
	.nan	legacy
	.text
	.file	"-"
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
	move	$fp, $sp
	lui	$1, %hi(%neg(%gp_rel(main)))
	daddu	$1, $1, $25
	daddiu	$gp, $1, %lo(%neg(%gp_rel(main)))
	sw	$zero, 4($fp)
	ld	$1, %got_page(.L.str)($gp)
	daddiu	$4, $1, %got_ofst(.L.str)
	ld	$25, %call16(printf)($gp)
	.reloc .Ltmp0, R_MIPS_JALR, printf
.Ltmp0:
	jalr	$25
	nop
	daddiu	$2, $zero, 0
	move	$sp, $fp
	ld	$gp, 8($sp)                     # 8-byte Folded Reload
	ld	$fp, 16($sp)                    # 8-byte Folded Reload
	ld	$ra, 24($sp)                    # 8-byte Folded Reload
	daddiu	$sp, $sp, 32
	jr	$ra
	nop
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
	.asciz	"hello world\n"
	.size	.L.str, 13

	.ident	"clang version 20.1.8 (Fedora 20.1.8-4.fc42)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym printf
	.text
