.section .data
    msg: .asciz "Answer: %f seconds\n"
    err: .asciz "grav <distance>\n"
    .align 3
    gh: .double 4.9
.section .text
.global main
main:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    cmp x0, #2
    blt error
calc:
    mov x20, x1
    adrp x21, gh
    add x21, x21, :lo12:gh
    ldr d8, [x21]
    ldr x0, [x20, #8]
    bl atof
    fdiv d1, d0, d8
    fsqrt d0, d1
    adrp x0, msg
    add x0, x0, :lo12:msg
    fmov x1, d0
    bl printf
    mov x0, #0
    b end
    
error:
    adrp x0, err
    add x0, x0, :lo12:err
    bl printf
    mov x0, #1
end:
    ldp x29, x30, [sp], #16
    ret