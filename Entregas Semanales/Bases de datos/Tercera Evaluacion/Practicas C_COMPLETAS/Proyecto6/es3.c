// Estructuras de control del flujo de informacion

#include <stdio.h>

int main(int argc, char *argv[]){
    int diadelasemana = 4;
    switch(diadelasemana){
        case 1:
            printf("Hoy es el dia 1 \n");
            break;
        case 2:
            printf("Hoy es el dia 2 \n");
            break;
        case 3:
            printf("Hoy es el dia 3 \n");
            break;
        case 4:
            printf("Hoy es el dia 4 \n");
            break;
        case 5:
            printf("Hoy es el dia 5 \n");
            break;
        case 6:
            printf("Hoy es el dia 6 \n");
            break;
        default:
            printf("Eso no es dia \n");
            break;
            
    }
    

    
    return 0;
}