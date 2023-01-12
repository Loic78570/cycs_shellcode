section .text


    global _start

_start:

        ; write our string to stdout.
        mov rax,42 ;
        cmp rax,42 ;
	    je print  ;
        call    end1

end0:

	    mov	    rbx,0	  ; first syscall argument: exit code.
        mov     rax,1     ; system call number (sys_exit).
        int     0x80	  ; call kernel.

end1:

	    mov	    rbx,1	  ; first syscall argument: exit code.
        mov     rax,1     ; system call number (sys_exit).
        int     0x80	  ; call kernel.

print:

        mov     rdx,len   ; third argument: message length.
        mov     rcx,[rsp + 4]   ; second argument: pointer to message to write.
        mov     rbx,1     ; first argument: file handle (stdout).
        mov     rax,4     ; system call number (sys_write).
        int     0x80	  ; call kernel.
        call    end0
        ret

section .data

msg     db      "1337",0xa
len     equ     $ - msg