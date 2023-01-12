section .text


    global _start

_start:

        ; write our string to stdout.
        mov eax,42 ;
        cmp eax,42 ;
	    je print  ;
        call    end1

end0:

	    mov	    ebx,0	  ; first syscall argument: exit code.
        mov     eax,1     ; system call number (sys_exit).
        int     0x80	  ; call kernel.

end1:

	    mov	    ebx,1	  ; first syscall argument: exit code.
        mov     eax,1     ; system call number (sys_exit).
        int     0x80	  ; call kernel.

print:

        mov     edx,len   ; third argument: message length.
        mov     ecx,[esp + 4]   ; second argument: pointer to message to write.
        mov     ecx,[esp + 4]   ; second argument: pointer to message to write.
        mov     ebx,1     ; first argument: file handle (stdout).
        mov     eax,4     ; system call number (sys_write).
        int     0x80	  ; call kernel.
        call    end0
        ret

section .data

msg     db      "1337",0xa
len     equ     $ - msg