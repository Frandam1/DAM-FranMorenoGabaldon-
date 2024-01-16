#include <stdio.h>

int main() {
    int contador = 9;

    do {
        printf("%d ", contador);
        contador++;
    } while (contador <= 9);

      printf("Después del bucle: %d\n", contador);

    return 0;
}
