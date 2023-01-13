section .data
file db '/bin/sh',0
file_arg db 'sh',0
argv dq file_arg, 0

section .text
global _start
_start:
mov     eax, 11
mov     edi, file
mov     esi, argv
mov     edx, 0
syscall