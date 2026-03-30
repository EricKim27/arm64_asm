	.abicalls
	.section	.mdebug.abi64,"",@progbits
	.nan	legacy
	.text
	.file	"strplay.c"
	.globl	main                            # -- Begin function main
	.p2align	3
	.type	main,@function
	.set	nomicromips
	.set	nomips16
	.ent	main
main:                                   # @main
	.frame	$fp,80,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	daddiu	$sp, $sp, -80
	sd	$ra, 72($sp)                    # 8-byte Folded Spill
	sd	$fp, 64($sp)                    # 8-byte Folded Spill
	sd	$gp, 56($sp)                    # 8-byte Folded Spill
	sd	$21, 48($sp)                    # 8-byte Folded Spill
	sd	$20, 40($sp)                    # 8-byte Folded Spill
	sd	$19, 32($sp)                    # 8-byte Folded Spill
	sd	$18, 24($sp)                    # 8-byte Folded Spill
	sd	$17, 16($sp)                    # 8-byte Folded Spill
	sd	$16, 8($sp)                     # 8-byte Folded Spill
	move	$fp, $sp
	lui	$1, %hi(%neg(%gp_rel(main)))
	daddu	$1, $1, $25
	daddiu	$gp, $1, %lo(%neg(%gp_rel(main)))
	ld	$25, %call16(malloc)($gp)
	.reloc .Ltmp0, R_MIPS_JALR, malloc
.Ltmp0:
	jalr	$25
	daddiu	$4, $zero, 100
	beqz	$2, .LBB0_11
	nop
# %bb.1:
	move	$16, $2
	ld	$1, %got_disp(msg)($gp)
	ldl	$2, 16($1)
	ldl	$3, 32($1)
	ldl	$4, 40($1)
	ldl	$5, 48($1)
	ldl	$6, 56($1)
	ldl	$7, 64($1)
	ldl	$8, 24($1)
	swl	$zero, 96($16)
	sdl	$zero, 88($16)
	sdl	$zero, 80($16)
	ldr	$7, 71($1)
	ldr	$6, 63($1)
	ldr	$5, 55($1)
	ldr	$4, 47($1)
	ldr	$3, 39($1)
	ldr	$8, 31($1)
	ldr	$2, 23($1)
	ldl	$9, 8($1)
	ldr	$9, 15($1)
	ldl	$10, 0($1)
	ldr	$10, 7($1)
	sdl	$zero, 72($16)
	sdl	$10, 0($16)
	sdl	$9, 8($16)
	sdl	$2, 16($16)
	sdl	$8, 24($16)
	sdl	$3, 32($16)
	sdl	$4, 40($16)
	sdl	$5, 48($16)
	sdl	$6, 56($16)
	sdl	$7, 64($16)
	swr	$zero, 99($16)
	sdr	$zero, 95($16)
	sdr	$zero, 87($16)
	sdr	$zero, 79($16)
	sdr	$10, 7($16)
	sdr	$9, 15($16)
	sdr	$2, 23($16)
	sdr	$8, 31($16)
	sdr	$3, 39($16)
	sdr	$4, 47($16)
	sdr	$5, 55($16)
	sdr	$6, 63($16)
	sdr	$7, 71($16)
	ld	$1, %got_page(.L.str)($gp)
	daddiu	$4, $1, %got_ofst(.L.str)
	ld	$25, %call16(printf)($gp)
	.reloc .Ltmp1, R_MIPS_JALR, printf
.Ltmp1:
	jalr	$25
	move	$5, $16
	addiu	$2, $zero, 101
	addiu	$3, $zero, 97
	b	.LBB0_4
	move	$4, $16
.LBB0_2:                                #   in Loop: Header=BB0_4 Depth=1
	sb	$3, 0($4)
.LBB0_3:                                #   in Loop: Header=BB0_4 Depth=1
	daddiu	$4, $4, 1
.LBB0_4:                                # =>This Inner Loop Header: Depth=1
	lbu	$5, 0($4)
	beq	$5, $2, .LBB0_2
	nop
# %bb.5:                                #   in Loop: Header=BB0_4 Depth=1
	bnez	$5, .LBB0_3
	nop
# %bb.6:
	ld	$1, %got_page(.L.str.1)($gp)
	daddiu	$4, $1, %got_ofst(.L.str.1)
	ld	$25, %call16(printf)($gp)
	.reloc .Ltmp2, R_MIPS_JALR, printf
.Ltmp2:
	jalr	$25
	move	$5, $16
	ld	$25, %call16(malloc)($gp)
	.reloc .Ltmp3, R_MIPS_JALR, malloc
.Ltmp3:
	jalr	$25
	daddiu	$4, $zero, 800
	move	$17, $2
	ld	$1, %got_page(.Lstr)($gp)
	ld	$25, %call16(puts)($gp)
	.reloc .Ltmp4, R_MIPS_JALR, puts
.Ltmp4:
	jalr	$25
	daddiu	$4, $1, %got_ofst(.Lstr)
	ld	$1, %got_page(.L.str.3)($gp)
	daddiu	$18, $1, %got_ofst(.L.str.3)
	ld	$25, %call16(strtok)($gp)
	move	$4, $16
	.reloc .Ltmp5, R_MIPS_JALR, strtok
.Ltmp5:
	jalr	$25
	move	$5, $18
	beqz	$2, .LBB0_12
	nop
# %bb.7:
	move	$19, $2
	addiu	$20, $zero, 0
	move	$21, $17
.LBB0_8:                                # =>This Inner Loop Header: Depth=1
	ld	$25, %call16(strlen)($gp)
	.reloc .Ltmp6, R_MIPS_JALR, strlen
.Ltmp6:
	jalr	$25
	move	$4, $19
	ld	$25, %call16(malloc)($gp)
	.reloc .Ltmp7, R_MIPS_JALR, malloc
.Ltmp7:
	jalr	$25
	daddiu	$4, $2, 1
	move	$4, $2
	sd	$2, 0($21)
	ld	$25, %call16(strcpy)($gp)
	.reloc .Ltmp8, R_MIPS_JALR, strcpy
.Ltmp8:
	jalr	$25
	move	$5, $19
	ld	$25, %call16(strtok)($gp)
	daddiu	$4, $zero, 0
	.reloc .Ltmp9, R_MIPS_JALR, strtok
.Ltmp9:
	jalr	$25
	move	$5, $18
	move	$19, $2
	addiu	$20, $20, 1
	bnez	$2, .LBB0_8
	daddiu	$21, $21, 8
# %bb.9:
	bnez	$20, .LBB0_13
	nop
# %bb.10:
	b	.LBB0_15
	nop
.LBB0_11:
	b	.LBB0_16
	addiu	$2, $zero, 1
.LBB0_12:
	addiu	$20, $zero, 0
	beqz	$20, .LBB0_15
	nop
.LBB0_13:
	dext $18, $20, 0, 32
.LBB0_14:                               # =>This Inner Loop Header: Depth=1
	ld	$4, 0($17)
	ld	$25, %call16(puts)($gp)
	.reloc .Ltmp10, R_MIPS_JALR, puts
.Ltmp10:
	jalr	$25
	nop
	daddiu	$18, $18, -1
	bnez	$18, .LBB0_14
	daddiu	$17, $17, 8
.LBB0_15:
	ld	$25, %call16(free)($gp)
	.reloc .Ltmp11, R_MIPS_JALR, free
.Ltmp11:
	jalr	$25
	move	$4, $16
	addiu	$2, $zero, 0
.LBB0_16:
	sll	$2, $2, 0
	move	$sp, $fp
	ld	$16, 8($sp)                     # 8-byte Folded Reload
	ld	$17, 16($sp)                    # 8-byte Folded Reload
	ld	$18, 24($sp)                    # 8-byte Folded Reload
	ld	$19, 32($sp)                    # 8-byte Folded Reload
	ld	$20, 40($sp)                    # 8-byte Folded Reload
	ld	$21, 48($sp)                    # 8-byte Folded Reload
	ld	$gp, 56($sp)                    # 8-byte Folded Reload
	ld	$fp, 64($sp)                    # 8-byte Folded Reload
	ld	$ra, 72($sp)                    # 8-byte Folded Reload
	jr	$ra
	daddiu	$sp, $sp, 80
	.set	at
	.set	macro
	.set	reorder
	.end	main
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
                                        # -- End function
	.type	msg,@object                     # @msg
	.section	.rodata,"a",@progbits
	.globl	msg
msg:
	.asciz	"Apples are red, blueberries are blue, I am pretty good, and so are you."
	.size	msg, 72

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Original String: %s\n"
	.size	.L.str, 21

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"Modified string: %s\n"
	.size	.L.str.1, 21

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	" "
	.size	.L.str.3, 2

	.type	.Lstr,@object                   # @str
.Lstr:
	.asciz	"Splitting strings"
	.size	.Lstr, 18

	.ident	"clang version 20.1.8 (Fedora 20.1.8-4.fc42)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.text
