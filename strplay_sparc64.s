	.file	"strplay.c"
	.text
	.globl	main                            ! -- Begin function main
	.p2align	2
	.type	main,@function
main:                                   ! @main
! %bb.0:
	save %sp, -176, %sp
	call malloc
	mov	100, %o0
	brz %o0, .LBB0_10
	nop
! %bb.1:
	mov	%o0, %i0
	add %o0, 72, %o0
	mov	28, %o2
	call memset
	mov	%g0, %o1
	sethi %h44(msg), %i1
	add %i1, %m44(msg), %i1
	sllx %i1, 12, %i1
	add %i1, %l44(msg), %o1
	mov	72, %o2
	call memcpy
	mov	%i0, %o0
	sethi %h44(.L.str), %i1
	add %i1, %m44(.L.str), %i1
	sllx %i1, 12, %i1
	add %i1, %l44(.L.str), %o0
	call printf
	mov	%i0, %o1
	mov	97, %i1
	ba .LBB0_4
	mov	%i0, %i2
.LBB0_2:                                !   in Loop: Header=BB0_4 Depth=1
	stb %i1, [%i2]
.LBB0_3:                                !   in Loop: Header=BB0_4 Depth=1
	add %i2, 1, %i2
.LBB0_4:                                ! =>This Inner Loop Header: Depth=1
	ldub [%i2], %i3
	cmp	%i3, 101
	be %icc, .LBB0_2
	nop
! %bb.5:                                !   in Loop: Header=BB0_4 Depth=1
	cmp	%i3, 0
	bne %icc, .LBB0_3
	nop
! %bb.6:
	sethi %h44(.L.str.1), %i1
	add %i1, %m44(.L.str.1), %i1
	sllx %i1, 12, %i1
	add %i1, %l44(.L.str.1), %o0
	call printf
	mov	%i0, %o1
	call malloc
	mov	800, %o0
	mov	%o0, %i1
	sethi %h44(.Lstr), %i2
	add %i2, %m44(.Lstr), %i2
	sllx %i2, 12, %i2
	call puts
	add %i2, %l44(.Lstr), %o0
	sethi %h44(.L.str.3), %i2
	add %i2, %m44(.L.str.3), %i2
	sllx %i2, 12, %i2
	add %i2, %l44(.L.str.3), %i2
	mov	%i0, %o0
	call strtok
	mov	%i2, %o1
	brz %o0, .LBB0_11
	nop
! %bb.7:
	mov	%o0, %i3
	mov	%g0, %i4
	mov	%i1, %i5
.LBB0_8:                                ! =>This Inner Loop Header: Depth=1
	call strlen
	mov	%i3, %o0
	call malloc
	add %o0, 1, %o0
	stx %o0, [%i5]
	call strcpy
	mov	%i3, %o1
	mov	%g0, %o0
	call strtok
	mov	%i2, %o1
	mov	%o0, %i3
	add %i5, 8, %i5
	brnz %o0, .LBB0_8
	add %i4, 1, %i4
! %bb.9:
	cmp	%i4, 0
	bne %icc, .LBB0_12
	nop
	ba .LBB0_14
	nop
.LBB0_10:
	ba .LBB0_15
	mov	1, %i0
.LBB0_11:
	mov	%g0, %i4
	cmp	%i4, 0
	be %icc, .LBB0_14
	nop
.LBB0_12:
	srl %i4, 0, %i2
.LBB0_13:                               ! =>This Inner Loop Header: Depth=1
	call puts
	ldx [%i1], %o0
	add %i2, -1, %i2
	brnz %i2, .LBB0_13
	add %i1, 8, %i1
.LBB0_14:
	call free
	mov	%i0, %o0
	mov	%g0, %i0
.LBB0_15:
	srl %i0, 0, %i0
	ret
	restore
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
                                        ! -- End function
	.type	msg,@object                     ! @msg
	.section	.rodata,"a",@progbits
	.globl	msg
msg:
	.asciz	"Apples are red, blueberries are blue, I am pretty good, and so are you."
	.size	msg, 72

	.type	.L.str,@object                  ! @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Original String: %s\n"
	.size	.L.str, 21

	.type	.L.str.1,@object                ! @.str.1
.L.str.1:
	.asciz	"Modified string: %s\n"
	.size	.L.str.1, 21

	.type	.L.str.3,@object                ! @.str.3
.L.str.3:
	.asciz	" "
	.size	.L.str.3, 2

	.type	.Lstr,@object                   ! @str
.Lstr:
	.asciz	"Splitting strings"
	.size	.Lstr, 18

	.ident	"clang version 20.1.8 (Fedora 20.1.8-4.fc42)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
