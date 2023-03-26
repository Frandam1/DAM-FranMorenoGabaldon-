#include <stdio.h>

int main(int argc, char *argv[]){
    printf("Introduce un nombre:\n");
    char nombre[20];
    //Escanea informacion
    scanf("%s",nombre);
    //%formateador
    printf("El nombnre es %s \n", nombre);
    

    
    return 0;
}