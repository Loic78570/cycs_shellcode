          global    _start

          section   .text
_start:   mov       eax, 1                  ;
          mov       edi, 1                  ;
          mov       esi, message            ;
          mov       edx, 5                  ;
          syscall                           ;
          mov       eax, 60                 ;
          xor       edi, edi                ;
          syscall                           ;

          section   .data
message:  db        "1337", 4               ;