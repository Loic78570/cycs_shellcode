#include <stdio.h>
#include <string.h>

unsigned char code[]= ""
                      "";
int main(){

    printf("Longueur shellcode %d\n", (int)strlen(code));

    int (*ret)() = (int(*)())code;

    ret();
    return 0
}