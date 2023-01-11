#include <stdio.h>
#include <string.h>
#include <unistd.h>

//  \x48\x31\xf6\x56\x48\xbf\x2f\x62\x69\x6e\x2f\x2f\x73\x68\x57\x54
// marche aussi

unsigned char code[] =
        "\x31\xc0\x50\x68\x2f\x2f\x73\x68\x68\x2f\x62\x69"
        "\x6e\x89\xe3\x50\x53\x89\xe1\xb0\x0b\xcd\x80";

int main(int argc,  char *argv[]){

    if (argc<2)
    {
        printf("usage ./wrapper {shellcode}");
        return 1;
    }

    char *shellcode = argv[1];

    size_t shellcode_len = strlen(shellcode);
    printf("Longueur shellcode : %ld octets\n", shellcode_len);

//    unsigned char code = argv[1];
//    unsigned char code[] = testvar;

    // exécution
    int (*ret)() = (int(*)())shellcode;

    ret();

//    (*(void (*)())shellcode)();

//  cmake-build-debug/wrapper $(python3 -c 'print("\x48\x31\xf6\x56\x48\xbf\x2f\x62\x69\x6e\x2f\x2f\x73\x68\x57\x54\x5f\xb0\x3b\x99\x0f\x05")')


}