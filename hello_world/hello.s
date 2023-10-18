
.global _start
.align 2


_start:
    mov x0, #1
    adr x1, hello
    mov x2, #13
    mov x16, #4
    svc #80

    mov x0, #0
    mov x16, #1
    svc #80

hello: .ascii "Hello World!\n"

