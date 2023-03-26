/*

Programa agenda
v1
por Fran Moreno

*/

#include <stdio.h>
// definir un elemento que no va a cambiar
#define  PI 3.1416
#define NOMBREPROGRAMA "Programa agenda"
#define VERSION "1.2"
#define AUTOR "Fran"

int main(int argc, char *argv[]){
    
    // Mensaje de Bienvenida
    
    printf("%s v%s \n",NOMBREPROGRAMA,VERSION);
    printf("por %s \n",AUTOR);
    printf("Selecciona una opción:  \n");
    
    printf("\t 1 - Listado de registros  \n");
    printf("\t 2 - Introducir un registro  \n");
    printf("\t 3 - Eliminar un registro  \n");
    printf("\t 4 - Buscar un registro  \n");
    printf("\t 5 - Actualizar un registro  \n");
    printf("Tu Opción:  \n");
    char opcion = getchar();
    printf("La opción que has seleccionado es: %c  \n",opcion);
    
    return 0;
}