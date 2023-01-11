#include <unistd.h>

int main(int argc, char *argv[]){
        execve("/bin/sh", argv, NULL);
}