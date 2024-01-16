#include <stdio.h>

int main() {
    char opcion = 'B';

    switch (opcion) {
        case 'A':
            printf("Seleccionaste la opción A.\n");
            break;
        case 'B':
            printf("Seleccionaste la opción B.\n");
            break;
        case 'C':
            printf("Seleccionaste la opción C.\n");
            break;
        default:
            printf("Opción no válida.\n");
    }

    return 0;
}
