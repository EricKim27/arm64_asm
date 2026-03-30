.global main
main:
    sub sp, sp, #32
    stp x29, x30, [sp, #16]!
    add x29, sp, #16
    mov x19, #1
    mov x20, #1
    mov x21, #0
    mov x22, x1
    cmp x0, #2
    blt err
loop:
    ldr x0, [x22, #8]
    bl atoi
    mov x23, x0
    sub x23, x23, #1
    cmp x21, x23
    bge end_suc
    cmp x21, #0
    bgt loop1
    adrp x0, .format
    add x0, x0, :lo12:.format
    mov x1, x19
    bl printf
loop1:
    adrp x0, .format
    add x0, x0, :lo12:.format
    mov x1, x20
    bl printf
    mov x24, x20
    add x20, x20, x19
    mov x19, x24
    add x21, x21, #1
    b loop
end_suc:
    mov x0, #0
    b end
err:
    adrp x0, .errcode
    add x0, x0, :lo12:.errcode
    bl printf
    mov x0, #1
    b end
end: 
    ldp x29, x30, [sp], 16
    add sp, sp, #32
    ret
.format:
    .asciz "%d\n"
    .size .format, 4
.errcode:
    .asciz "Usage: fib <count>\n"
    .size .errcode, 20