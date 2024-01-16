#include <stdio.h>

int main(int argc, char *argv[]) {

    // Operaciones aritméticas
    printf("Suma: %d \n", 5 + 5);
    printf("Resta: %d \n", 5 - 5);
    printf("Multiplicacion: %d \n", 5 * 5);
    printf("Division: %d \n", 5 / 5);

    // Operadores de comparación
    int a = 5;
    int b = 10;

    printf("\nOperadores de Comparacion:\n");
    printf("%d == %d : %d \n", a, b, a == b);   // Igual a
    printf("%d != %d : %d \n", a, b, a != b);   // No igual a
    printf("%d < %d : %d \n", a, b, a < b);     // Menor que
    printf("%d > %d : %d \n", a, b, a > b);     // Mayor que
    printf("%d <= %d : %d \n", a, b, a <= b);   // Menor o igual que
    printf("%d >= %d : %d \n", a, b, a >= b);   // Mayor o igual que

    // Operadores lógicos
    int x = 1;
    int y = 0;

    printf("\nOperadores Logicos:\n");
    printf("%d && %d : %d \n", x, y, x && y);  // AND lógico
    printf("%d || %d : %d \n", x, y, x || y);  // OR lógico
    printf("!%d : %d \n", x, !x);               // NOT lógico

    return 0;
}
