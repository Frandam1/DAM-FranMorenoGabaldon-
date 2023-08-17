// Estructuras de control del flujo de informacion

#include <stdio.h>

int main(int argc, char *argv[]){
    int edad = 42;
    
    if(edad < 20){
        if(edad < 10){
            printf("Eres un niño \n");
        }else{
            printf("Eres un chaval \n");
        }
    }else{
        
        if(edad < 30){
            printf("Eres joven \n");
        }else{
            printf("Ya no eres tan joven\n");
        }
    }
    

    
    return 0;
}