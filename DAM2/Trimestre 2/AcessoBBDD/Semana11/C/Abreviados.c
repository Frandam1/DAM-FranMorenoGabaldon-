#include <stdio.h>

int main() {
    // Inicializar la variable edad
    int edad = 25;

    // Mostrar la edad original
    printf("Edad original: %d\n", edad);

    // Incremento abreviado por un valor específico
    edad ++; // Equivalente a edad = edad + 5;
    printf("Después de incrementar por 5: %d\n", edad);

    // Decremento abreviado por un valor específico
    edad --; // Equivalente a edad = edad - 3;
    printf("Después de decrementar por 3: %d\n", edad);

    // Operadores abreviados para incremento y decremento
    int a = 10;
    int b = 20;

    // Incremento abreviado por un valor específico
    a += 4; // Equivalente a a = a + 4;
    printf("a después de incrementar por 4: %d\n", a);

    // Decremento abreviado por un valor específico
    b -= 8; // Equivalente a b = b - 8;
    printf("b después de decrementar por 8: %d\n", b);

    return 0;
}
