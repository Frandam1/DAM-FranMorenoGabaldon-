#include <stdio.h>

int main(int argc, char *argv[]){
    float numero1 = 4;
    float numero2= 3;
    
    int resto1 = 7;
    int resto2 = 5;
    
    float resultado = numero1 + numero2;
    printf("El resultado es: %f \n",resultado);
    
    float resultado1 = numero1 - numero2;
    printf("El resultado es: %f \n",resultado1);
    
    float resultado2 = numero1 * numero2;
    printf("El resultado es: %f \n",resultado2);
    
    float resultado3 = numero1 / numero2;
    printf("El resultado es: %f \n",resultado3);
    
    int resultado4 = resto1 % resto2;
    printf("El resultado resto es: %i \n",resultado4);
    

    
    return 0;
}