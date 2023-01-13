#include <stdio.h>

int main() {
    int num;

    printf("Entrez un entier: ");
    scanf("%d", &num);

    if (num % 2 == 0) {
        return 0;
    } else {
        return 1;
    }
}