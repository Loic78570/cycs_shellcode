section .data
file db '/bin/sh',0
file_arg db 'sh',0
argv dq file_arg, 0

section .text
global _start
_start:
mov     rax, 59
mov     rdi, file
mov     rsi, argv
mov     rdx, 0
syscall