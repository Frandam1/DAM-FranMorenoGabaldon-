#include <stdio.h>

int main(int argc, char *argv[]){
    
    int num1 = 4;
    int num2 = 3;
    int num3 = 2;
    int num4 = 6;
    
    int comparar = num1 < num2 && num3 > num4;
    int comparar2 = num1 < num3 || num3 > num4;
    int comparar3 = num1 != num2;
    
    
    /*int comparar3 = num1 < num2;
    int comparar4 = num1 > num2;
    int comparar5 = num1 >= num3;
    int comparar6 = num1 <= num3;
    */
    
    printf("El resultado es: %i \n",comparar);
    printf("El resultado es: %i \n",comparar2);
    printf("El resultado es: %i \n",comparar3);
    
    
    return 0;
}