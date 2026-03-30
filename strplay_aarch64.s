	.file	"strplay.c"
	.text
	.globl	main                            // -- Begin function main
	.p2align	2
	.type	main,@function
main:                                   // @main
	.cfi_startproc
// %bb.0:
	stp	x29, x30, [sp, #-64]!           // 16-byte Folded Spill
	.cfi_def_cfa_offset 64
	str	x23, [sp, #16]                  // 8-byte Folded Spill
	stp	x22, x21, [sp, #32]             // 16-byte Folded Spill
	stp	x20, x19, [sp, #48]             // 16-byte Folded Spill
	mov	x29, sp
	.cfi_def_cfa w29, 64
	.cfi_offset w19, -8
	.cfi_offset w20, -16
	.cfi_offset w21, -24
	.cfi_offset w22, -32
	.cfi_offset w23, -48
	.cfi_offset w30, -56
	.cfi_offset w29, -64
	mov	w0, #100                        // =0x64
	bl	malloc
	cbz	x0, .LBB0_10
// %bb.1:
	adrp	x8, msg
	add	x8, x8, :lo12:msg
	mov	x19, x0
	ldp	q0, q1, [x8, #32]
	ldr	x9, [x8, #64]
	str	wzr, [x0, #96]
	mov	x1, x19
	stp	xzr, xzr, [x0, #80]
	stp	q0, q1, [x0, #32]
	ldp	q1, q0, [x8]
	stp	x9, xzr, [x0, #64]
	stp	q1, q0, [x0]
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	printf
	mov	w8, #97                         // =0x61
	mov	x9, x19
	b	.LBB0_4
.LBB0_2:                                //   in Loop: Header=BB0_4 Depth=1
	strb	w8, [x9]
.LBB0_3:                                //   in Loop: Header=BB0_4 Depth=1
	add	x9, x9, #1
.LBB0_4:                                // =>This Inner Loop Header: Depth=1
	ldrb	w10, [x9]
	cmp	w10, #101
	b.eq	.LBB0_2
// %bb.5:                               //   in Loop: Header=BB0_4 Depth=1
	cbnz	w10, .LBB0_3
// %bb.6:
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	mov	x1, x19
	bl	printf
	mov	w0, #800                        // =0x320
	bl	malloc
	mov	x20, x0
	adrp	x0, .Lstr
	add	x0, x0, :lo12:.Lstr
	bl	puts
	adrp	x1, .L.str.3
	add	x1, x1, :lo12:.L.str.3
	mov	x0, x19
	bl	strtok
	cbz	x0, .LBB0_11
// %bb.7:
	mov	x22, x0
	mov	x23, xzr
	adrp	x21, .L.str.3
	add	x21, x21, :lo12:.L.str.3
.LBB0_8:                                // =>This Inner Loop Header: Depth=1
	mov	x0, x22
	bl	strlen
	add	x0, x0, #1
	bl	malloc
	mov	x1, x22
	str	x0, [x20, x23, lsl #3]
	bl	strcpy
	mov	x0, xzr
	mov	x1, x21
	bl	strtok
	mov	x22, x0
	add	x23, x23, #1
	cbnz	x0, .LBB0_8
// %bb.9:
	cbnz	w23, .LBB0_12
	b	.LBB0_14
.LBB0_10:
	mov	w0, #1                          // =0x1
	b	.LBB0_15
.LBB0_11:
	mov	w23, wzr
	cbz	w23, .LBB0_14
.LBB0_12:
	mov	w21, w23
.LBB0_13:                               // =>This Inner Loop Header: Depth=1
	ldr	x0, [x20], #8
	bl	puts
	subs	x21, x21, #1
	b.ne	.LBB0_13
.LBB0_14:
	mov	x0, x19
	bl	free
	mov	w0, wzr
.LBB0_15:
	.cfi_def_cfa wsp, 64
	ldp	x20, x19, [sp, #48]             // 16-byte Folded Reload
	ldr	x23, [sp, #16]                  // 8-byte Folded Reload
	ldp	x22, x21, [sp, #32]             // 16-byte Folded Reload
	ldp	x29, x30, [sp], #64             // 16-byte Folded Reload
	.cfi_def_cfa_offset 0
	.cfi_restore w19
	.cfi_restore w20
	.cfi_restore w21
	.cfi_restore w22
	.cfi_restore w23
	.cfi_restore w30
	.cfi_restore w29
	ret
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
                                        // -- End function
	.type	msg,@object                     // @msg
	.section	.rodata,"a",@progbits
	.globl	msg
msg:
	.asciz	"Apples are red, blueberries are blue, I am pretty good, and so are you."
	.size	msg, 72

	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Original String: %s\n"
	.size	.L.str, 21

	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"Modified string: %s\n"
	.size	.L.str.1, 21

	.type	.L.str.3,@object                // @.str.3
.L.str.3:
	.asciz	" "
	.size	.L.str.3, 2

	.type	.Lstr,@object                   // @str
.Lstr:
	.asciz	"Splitting strings"
	.size	.Lstr, 18

	.ident	"clang version 20.1.8 (Fedora 20.1.8-4.fc42)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
