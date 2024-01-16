#include <stdio.h>

int main() {
    FILE *archivo;
    char texto[] = "Hola, este es el segundo ejemplo de archivo en C.";

    // Abrir el archivo en modo escritura
    archivo = fopen("ejemplo2.txt", "w");

    // Verificar si se abrió correctamente
    if (archivo == NULL) {
        printf("No se pudo abrir el archivo.\n");
        return 1;
    }

    // Escribir en el archivo
    fprintf(archivo, "%s\n", texto);

    // Cerrar el archivo
    fclose(archivo);

    printf("Archivo creado y escrito exitosamente.\n");

    return 0;
}
