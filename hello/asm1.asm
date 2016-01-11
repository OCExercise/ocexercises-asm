SECTION .data       ;initalized data

msg: db "Hello, World.  This is assembler." ;our message

SECTION .text       ;asm code

extern printf
global main

main:
    push ebp
    mov ebp, esp

    push msg
    call printf

    mov esp, ebp
    pop ebp
    ret