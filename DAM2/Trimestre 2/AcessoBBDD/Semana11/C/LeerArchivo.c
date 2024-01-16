#include <stdio.h>

int main() {
    FILE *archivo;
    char caracter;

    // Abrir el archivo en modo lectura
    archivo = fopen("ejemplo2.txt", "r");

    // Verificar si se abrió correctamente
    if (archivo == NULL) {
        printf("No se pudo abrir el archivo.\n");
        return 1;
    }

    // Leer y mostrar el contenido del archivo
    printf("Contenido del archivo:\n");
    while ((caracter = fgetc(archivo)) != EOF) {
        putchar(caracter);
    }

    // Cerrar el archivo
    fclose(archivo);

    return 0;
}
