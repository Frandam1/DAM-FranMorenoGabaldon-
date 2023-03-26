#include <stdio.h>
#include <string.h>

int main(int argc, char *argv[]){
    
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
    
    //Devolvemos los registros
    
    for(int i = 0;i<10;i=i+1){
        printf("El nombre del primer registro es : %s \n",agenda[i].nombre);
        printf("El apellido del primer registro es : %s \n",agenda[i].apellidos);
    }
    
    
    
    printf("\n");
    
    return 0;
}