/*

Programa agenda
v1
por Fran Moreno

*/
#include <string.h>
#include <stdio.h>
// definir un elemento que no va a cambiar
#define  PI 3.1416
#define NOMBREPROGRAMA "Programa agenda"
#define VERSION "1.9"
#define AUTOR "Fran"

int main(int argc, char *argv[]){
    
    // Creamos una estructura con algun  registrio
    
    struct RegistroAgenda{
        char nombre[50];
        char apellidos[50];
        char correo[50];
        char telefono[50];
        char direccion[50];
        
    };
    
    struct RegistroAgenda agenda[100];
    
    strcpy(agenda[0].nombre,"Fran");
    strcpy(agenda[0].apellidos,"Moreno");
    
    strcpy(agenda[1].nombre,"juan");
    strcpy(agenda[1].apellidos,"martin");
    
    strcpy(agenda[2].nombre,"joui");
    strcpy(agenda[2].apellidos,"sederte");
    
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
    // Que hacemos en cada parte del programa
    switch(opcion){
        case '1':
            printf("Te ofrezco un listado de registros \n");
            for(int i = 0;i<10;i=i+1){
                if(strcmp(agenda[i].nombre, "")){
                    printf("El nombre del primer registro es : %s \n",agenda[i].nombre);
                    printf("El apellido del primer registro es : %s \n",agenda[i].apellidos);
                }
            }
            break;
        case '2':
            printf("Introducimos un registro \n");
            break;
        case '3':
            printf("Eliminamos uin registro \n");
            break;
        case '4':
            printf("Buscamos un registro \n");
            break;
        case '5':
            printf("Actualizamos un registro \n");
            break;
        default:
            printf("Debes elegir una opcion valida \n");
            
            break;
    }
    printf("Finalizando .... \n");
    printf("\n");
    
    
    
    
    
    
    return 0;
}