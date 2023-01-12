section .data
msg     db      '/bin/sh', 0Ah, 0h

section .text
global _start

_start:
    ; 59 opcode
    ; int execve(char *fname, char **argp, char **envp);
    xor eax, eax        ;Zero EAX
    mov ecx, eax        ;Zero ecx
    mov edx, eax        ;Zero edx
    mov ebx, msg             ;string to ebx
    mov byte[ebx+7], al     ;append a zero onto the end of the string '/bin/sh'

    add eax, 59        ;execve opcode
    int 80h            ;interupt