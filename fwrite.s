	.file	"fwrite.c"
	.text
	.globl	main                            # -- Begin function main
	.p2align	4
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	xorl	%ebx, %ebx
	movl	$.L.str, %edi
	movl	$577, %esi                      # imm = 0x241
	movl	$420, %edx                      # imm = 0x1A4
	xorl	%eax, %eax
	callq	open
	cmpl	$-1, %eax
	je	.LBB0_1
# %bb.2:
	movl	%eax, %r14d
	movl	$.L.str.1, %esi
	movl	$13, %edx
	movl	%eax, %edi
	callq	write
	movl	%r14d, %edi
	callq	close
	jmp	.LBB0_3
.LBB0_1:
	movl	$1, %ebx
.LBB0_3:
	movl	%ebx, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
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
