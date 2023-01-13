#include <stdio.h>
#include <stdint.h>

int main() {
    execve("/bin/sh", NULL, NULL);
}