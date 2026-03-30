	.file	"strplay.c"
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
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movl	$100, %edi
	callq	malloc
	testq	%rax, %rax
	je	.LBB0_1
# %bb.2:
	movq	%rax, %rbx
	xorps	%xmm0, %xmm0
	movups	%xmm0, 84(%rax)
	movups	%xmm0, 72(%rax)
	movaps	msg(%rip), %xmm0
	movups	%xmm0, (%rax)
	movaps	msg+16(%rip), %xmm0
	movups	%xmm0, 16(%rax)
	movaps	msg+32(%rip), %xmm0
	movups	%xmm0, 32(%rax)
	movaps	msg+48(%rip), %xmm0
	movups	%xmm0, 48(%rax)
	movabsq	$13076970562676082, %rax        # imm = 0x2E756F79206572
	movq	%rax, 64(%rbx)
	movl	$.L.str, %edi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	callq	printf
	movq	%rbx, %rax
	jmp	.LBB0_3
	.p2align	4
.LBB0_13:                               #   in Loop: Header=BB0_3 Depth=1
	movb	$97, (%rax)
.LBB0_14:                               #   in Loop: Header=BB0_3 Depth=1
	incq	%rax
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	movzbl	(%rax), %ecx
	cmpl	$101, %ecx
	je	.LBB0_13
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	testl	%ecx, %ecx
	jne	.LBB0_14
# %bb.5:
	xorl	%r12d, %r12d
	movl	$.L.str.1, %edi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	callq	printf
	movl	$800, %edi                      # imm = 0x320
	callq	malloc
	movq	%rax, %r14
	movl	$.Lstr, %edi
	callq	puts@PLT
	movl	$.L.str.3, %esi
	movq	%rbx, %rdi
	callq	strtok
	testq	%rax, %rax
	je	.LBB0_8
# %bb.6:
	movq	%rax, %r15
	xorl	%r12d, %r12d
	.p2align	4
.LBB0_7:                                # =>This Inner Loop Header: Depth=1
	movq	%r15, %rdi
	callq	strlen
	leaq	1(%rax), %rdi
	callq	malloc
	movq	%rax, (%r14,%r12,8)
	movq	%rax, %rdi
	movq	%r15, %rsi
	callq	strcpy
	movl	$.L.str.3, %esi
	xorl	%edi, %edi
	callq	strtok
	movq	%rax, %r15
	incq	%r12
	testq	%rax, %rax
	jne	.LBB0_7
.LBB0_8:
	testl	%r12d, %r12d
	je	.LBB0_11
# %bb.9:
	movl	%r12d, %r15d
	xorl	%r12d, %r12d
	.p2align	4
.LBB0_10:                               # =>This Inner Loop Header: Depth=1
	movq	(%r14,%r12,8), %rdi
	callq	puts@PLT
	incq	%r12
	cmpq	%r12, %r15
	jne	.LBB0_10
.LBB0_11:
	movq	%rbx, %rdi
	callq	free
	xorl	%eax, %eax
	jmp	.LBB0_12
.LBB0_1:
	movl	$1, %eax
.LBB0_12:
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
                                        # -- End function
	.type	msg,@object                     # @msg
	.section	.rodata,"a",@progbits
	.globl	msg
	.p2align	4, 0x0
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
