
.data
hello: .ascii "Hello World!\n" ; 14 len

.text
.align 2

.global _start
_start:
    
    mov x10, xzr ; int i = 0;
cond: 
    cmp x10, #10 ; i < 10
    b.ge done    ; exit loop if false

; For practice, store value on stack    
    ;stp x0, xzr, [sp, #-16]

; Print hello world
    mov x0, #1
    adrp x1, hello@PAGE
    add x1, x1, hello@PAGEOFF
    mov x2, #13
    mov x16, #4
    svc #80

; Load back from stack for practice
    ;ldp x0, xzr, [sp], #16

; increment
    add x10, x10, #1
    b cond 

done:
    ; Exit (0)
    mov x0, #0
    mov x16, #1
    svc #80
