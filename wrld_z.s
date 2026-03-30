	.file	"-"
	.text
	.globl	main                            # -- Begin function main
	.p2align	4
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:
	stmg	%r11, %r15, 88(%r15)
	.cfi_offset %r11, -72
	.cfi_offset %r14, -48
	.cfi_offset %r15, -40
	aghi	%r15, -168
	.cfi_def_cfa_offset 328
	lgr	%r11, %r15
	.cfi_def_cfa_register %r11
	mvhi	164(%r11), 0
	iilf	%r0, 1080033280
	st	%r0, 160(%r11)
	ldeb	%f0, 160(%r11)
	larl	%r2, .L.str
	brasl	%r14, printf@PLT
	lghi	%r2, 0
	lmg	%r11, %r15, 256(%r11)
	br	%r14
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.2,"aMS",@progbits,1
	.p2align	1, 0x0
.L.str:
	.asciz	"%f\n"
	.size	.L.str, 4

	.ident	"clang version 20.1.8 (Fedora 20.1.8-4.fc42)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym printf
