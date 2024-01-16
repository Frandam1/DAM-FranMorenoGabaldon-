#include <stdio.h>
#include <string.h> 

int main() {
    // Definir la agenda multidimensional [10][4]
    char agenda[10][4][50];  // Se asume que cada dato puede tener hasta 50 caracteres

    // Inicializar algunos datos en la agenda
    sprintf(agenda[0][0], "%s", "Nombre1");
    sprintf(agenda[0][1], "%s", "Apellido1");
    sprintf(agenda[0][2], "%s", "Telefono1");
    sprintf(agenda[0][3], "%s", "Correo1@example.com");

    sprintf(agenda[1][0], "%s", "Nombre2");
    sprintf(agenda[1][1], "%s", "Apellido2");
    sprintf(agenda[1][2], "%s", "Telefono2");
    sprintf(agenda[1][3], "%s", "Correo2@example.com");

    // Mostrar algunos datos de la agenda
    printf("Datos del primer registro:\n");
    printf("Nombre: %s\n", agenda[0][0]);
    printf("Apellido: %s\n", agenda[0][1]);
    printf("Telefono: %s\n", agenda[0][2]);
    printf("Correo: %s\n", agenda[0][3]);

    printf("\nDatos del segundo registro:\n");
    printf("Nombre: %s\n", agenda[1][0]);
    printf("Apellido: %s\n", agenda[1][1]);
    printf("Telefono: %s\n", agenda[1][2]);
    printf("Correo: %s\n", agenda[1][3]);

    return 0;
}
