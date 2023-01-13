global _start

section .text
_start:
    xor eax, eax            ; first dword of zeros needs to be pushed onto stack
    push eax

    push 0x6d303100
    push 0x73612f2e

    mov ebx, esp            ; 1st arg, setting filename arguemnt to the current stack which points to //bin/sh0000

    push eax                ; 3rd arg, second dword of zeros are pushed for env[] structure
    mov edx, esp

    push ebx                ; pushing the address of null terminated filename //bin/sh000
    mov ecx, esp            ; 2nd argument, includes address(////bin/bash0000) + address(--version000) + 0000

    mov al, 0xb             ; setting up and invoking execve syscall, 0xb for syscall number 11
    int 0x80