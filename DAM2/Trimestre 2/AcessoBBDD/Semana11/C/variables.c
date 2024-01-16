#include <stdio.h>

int main() {
    // Variables enteras
    int entero = 10;
    printf("Entero: %d\n", entero);

    // Variables de punto flotante
    float flotante = 3.14;
    printf("Flotante: %.2f\n", flotante);

    // Variables de doble precisión
    double doble = 2.71828;
    printf("Doble: %lf\n", doble);

    // Variables de caracteres
    char caracter = 'A';
    printf("Caracter: %c\n", caracter);

    // Variables de cadena (arreglo de caracteres)
    char cadena[] = "Hola, mundo!";
    printf("Cadena: %s\n", cadena);

    // Variables de tipo booleano (en C, se usa int)
    int booleano = 1;  // 1 representa verdadero, 0 representa falso
    printf("Booleano: %d\n", booleano);

    return 0;
}
