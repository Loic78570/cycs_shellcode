global _start

section  .rodata
    message: db "1337", 10
    len_message: equ $ - message

segment .bss
    input resd 13

segment .text

_start:
    mov rax, 1
    mov rdi, 1
    mov rsi, message
    mov rdx, len_message
    syscall

        mov rax, 0
    mov rdi, 1
    mov rsi, input
    mov rdx, 15
    syscall

    mov al, [input]
        cmp al, 10
        je petit_nombre
    mov al, [input+1]

compar:
    cmp al, '0'
    je exit
    cmp al, '2'
    je exit
    cmp al, '4'
    je exit
    cmp al, '6'
    je exit
    cmp al, '8'
    je exit

    mov rax,60
    mov rdi,70
    syscall

petit_nombre:
    mov rax, [input]
    jmp compar

exit:
    mov rax,60
        mov rdi,97
    syscall