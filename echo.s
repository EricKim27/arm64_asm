.global main
main:
    sub sp, sp, #32
    stp x29, x30, [sp, #16]
    add x29, sp, #16
    cmp x0, 2
    blt end
    mov x22, #1
    mov x21, #8
    mov x19, x0
    mov x20, x1
loop1:
    cmp x22, x19
    bge fin
    adrp x0, .string
    add x0, x0, :lo12:.string
    ldr x1, [x20, x21]
    bl printf
    add x22, x22, #1
    add x21, x21, #8
    b loop1
fin:
    adrp x0, .string2
    add x0, x0, :lo12:.string2
    bl printf
end:
    mov x0, #0
    ldp x29, x30, [sp, #16]
    add sp, sp, #32
    ret

.string:
    .asciz "%s "
    .size .string, 3
.string2:
    .asciz "\n"
    .size .string, 2