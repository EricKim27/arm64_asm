.global main
main:
  //need to understand this
  sub sp, sp, #32
  stp x29, x30, [sp, #16]
  add x29, sp, #16

  mov x0, xzr
  mov x1, xzr
  add x0, x0, #4
  mov x19, x0
  add x1, x1, #7
  bl add
  mov x1, x0
  adrp x0, .L.str
  add x0, x0, :lo12:.L.str
  bl printf
  cmp x19, #4
  b.ne .branch1
  adrp x0, .L.str2
  add x0, x0, :lo12:.L.str 2
  bl printf

.branch1:
  ldp x29, x30, [sp, #16]
  add sp, sp, #32
  mov x0, xzr
  ret

add:
  add x0, x0, x1
  ret

.L.str:
  .asciz "%lld\n"
  .size .L.str, 6

.L.str2:
  .asciz "It's 4\n"
  .size .L.str2, 8