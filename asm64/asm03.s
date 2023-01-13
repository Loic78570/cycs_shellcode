section .bss           ;Uninitialized data
  num resb 5

section .text          ;Code Segment
  global _start

_start:                ;User prompt
  mov rax, 4
  mov rbx, 1
  mov rcx, userMsg
  mov rdx, lenUserMsg
  int 80h

  ;Read and store the user input
  mov rax, 3
  mov rbx, 2
  mov rcx, num
  mov rdx, 5          ;5 bytes (numeric, 1 for sign) of that information
  int 80h

  mov al, byte[num]
  cmp al, byte[value]
  jne end_return_1

  ;Output the message '1337'
  mov rax, 4
  mov rbx, 1
  mov rcx, number
  mov rdx, numberLen
  int 80h

  ; Exit code
  mov rax, 1
  mov rbx, 0
  int 80h

end_return_1:
  mov rax, 1
  mov rbx, 1
  int 80h

section .data                           ;Data segment
  userMsg db 'Please enter a number: ' ;Ask the user to enter a number
  lenUserMsg equ $-userMsg             ;The length of the message
  value: db '42', 2
  valueLen: equ $-value
  number:     db '1337', 4
    numberLen:  equ $-number