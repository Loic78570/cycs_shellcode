; Disassembly of file: main.o
; Thu Jan 12 18:39:02 2023
; Type: ELF64
; Syntax: NASM
; Instruction set: 8086, x64

global main

extern __stack_chk_fail                                 ; near
extern __isoc99_scanf                                   ; near
extern __printf_chk                                     ; near


SECTION .text                        ; section number 1, code


SECTION .data                    ; section number 2, data


SECTION .bss                ; section number 3, bss


SECTION .rodata.str1.1                 ; section number 4, const

LC0:                                                   ; byte
        db 45H, 6EH, 74H, 72H, 65H, 7AH, 20H, 75H       ; 0000 _ Entrez u
        db 6EH, 20H, 65H, 6EH, 74H, 69H, 65H, 72H       ; 0008 _ n entier
        db 3AH, 20H, 00H                                ; 0010 _ : .

LC1:                                                   ; byte
        db 25H, 64H, 00H                                ; 0013 _ %d.


SECTION .text.startup                  ; section number 5, code

main:   ; Function begin
        endbr64                                         ; 0000 _ F3: 0F 1E. FA
        sub     rsp, 24                                 ; 0004 _ 48: 83. EC, 18
        lea     rsi, [rel LC0]                         ; 0008 _ 48: 8D. 35, 00000000(rel)
        mov     edi, 1                                  ; 000F _ BF, 00000001
; Note: Address is not rip-relative
; Note: Absolute memory address without relocation
        mov     rax, qword [fs:abs 28H]                 ; 0014 _ 64 48: 8B. 04 25, 00000028
        mov     qword [rsp+8H], rax                     ; 001D _ 48: 89. 44 24, 08
        xor     eax, eax                                ; 0022 _ 31. C0
        call    __printf_chk                            ; 0024 _ E8, 00000000(PLT r)
        lea     rsi, [rsp+4H]                           ; 0029 _ 48: 8D. 74 24, 04
        lea     rdi, [rel LC1]                         ; 002E _ 48: 8D. 3D, 00000000(rel)
        xor     eax, eax                                ; 0035 _ 31. C0
        call    __isoc99_scanf                          ; 0037 _ E8, 00000000(PLT r)
        mov     eax, dword [rsp+4H]                     ; 003C _ 8B. 44 24, 04
        and     eax, 01H                                ; 0040 _ 83. E0, 01
        mov     rdx, qword [rsp+8H]                     ; 0043 _ 48: 8B. 54 24, 08
; Note: Address is not rip-relative
; Note: Absolute memory address without relocation
        sub     rdx, qword [fs:abs 28H]                 ; 0048 _ 64 48: 2B. 14 25, 00000028
        jnz     ?_001                                   ; 0051 _ 75, 05
        add     rsp, 24                                 ; 0053 _ 48: 83. C4, 18
        ret                                             ; 0057 _ C3
; main End of function

?_001:  ; Local function
; Note: Function does not end with ret or jmp
        call    __stack_chk_fail                        ; 0058 _ E8, 00000000(PLT r)


SECTION .note.gnu.property            ; section number 6, const

        db 04H, 00H, 00H, 00H, 10H, 00H, 00H, 00H       ; 0000 _ ........
        db 05H, 00H, 00H, 00H, 47H, 4EH, 55H, 00H       ; 0008 _ ....GNU.
        db 02H, 00H, 00H, 0C0H, 04H, 00H, 00H, 00H      ; 0010 _ ........
        db 03H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0018 _ ........


