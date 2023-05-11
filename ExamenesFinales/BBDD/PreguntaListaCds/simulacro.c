/*

Simulacro

por Fran Moreno

*/
#include <string.h>
#include <stdio.h>
// definir un elemento que no va a cambiar
#define  PI 3.1416
#define NOMBREPROGRAMA "Programa Lista Cds"
#define VERSION "1.0"
#define AUTOR "Fran"

int main(int argc, char *argv[]){
    
    // Creamos una estructura con algun  registrio
    
    struct RegistroAgenda{
        char TituloCD[50];
        char Artista[50];
        char AnioLanzamiento[50];
        char Genero[50];
        
    };
    
    struct RegistroAgenda agenda[100];
    
    strcpy(agenda[0].TituloCD,"Paranoid");
    strcpy(agenda[0].Artista,"Black Sabbath");
    strcpy(agenda[0].AnioLanzamiento,"1970");
    strcpy(agenda[0].Genero,"Heavy metal");
    
    strcpy(agenda[1].TituloCD,"The Number of the Beast");
    strcpy(agenda[1].Artista,"Iron Maiden");
    strcpy(agenda[1].AnioLanzamiento,"1982");
    strcpy(agenda[1].Genero,"Heavy metal");
    
    strcpy(agenda[2].TituloCD,"Appetite for Destruction");
    strcpy(agenda[2].Artista,"Guns N' Roses");
    strcpy(agenda[2].AnioLanzamiento,"1987");
    strcpy(agenda[2].Genero,"Hard rock");
    
    strcpy(agenda[3].TituloCD,"Led Zeppelin IV");
    strcpy(agenda[3].Artista,"Led Zeppelin");
    strcpy(agenda[3].AnioLanzamiento,"1971");
    strcpy(agenda[3].Genero,"Rock");
    
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
    printf("La opción que has seleccionado es: %c  \n\n",opcion);
    // Que hacemos en cada parte del programa
    switch(opcion){
        case '1':
            printf("Te ofrezco un listado de registros \n\n");
            for(int i = 0;i<10;i=i+1){
                if(strcmp(agenda[i].TituloCD, "")){
                    printf("Nombre del Disco : %s \n",agenda[i].TituloCD);
                    printf("Nombre del Artista : %s \n",agenda[i].Artista);
                    printf("Anio de lanzamiento : %s \n",agenda[i].AnioLanzamiento);
                    printf("Genero musical : %s \n",agenda[i].Genero);
                    printf("\n");
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