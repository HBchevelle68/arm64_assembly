
.global _start
.text
.align 2


_start:
; write
    mov x0, #1
    adrp x1, hello
    mov x2, #14
    mov x16, #4
    svc #80

; Exit
    mov x0, #0
    mov x16, #1
    svc #80

.data
    hello: .asciz "Hello World!\n"

