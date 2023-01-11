#include <stdio.h>
#include <string.h>
#include <unistd.h>

//        "\x48\x31\xf6\x56\x48\xbf"
//        "\x2f\x62\x69\x6e\x2f"
//        "\x2f\x73\x68\x57\x54"
//        "\x5f\xb0\x3b\x99\x0f\x05";

int main(int argc, char *argv[]){

    printf("Longueur shellcode %d\n", (int)strlen(code));

//    unsigned char code = argv[1];
//    unsigned char code[] = testvar;

    int (*ret)() = (int(*)())argv;

    ret();
//
////    const char *argvx = ["/bin/sh", "lol"];
//
//    execve("/bin/sh", NULL, NULL);


}