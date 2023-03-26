#include <stdio.h>

int main(int argc, char *argv[]){
    // Array multidimensional 
    
    char* agenda[10][4];
    
    agenda[0][0] = "00";
    agenda[0][1] = "01";
    agenda[0][2] = "02";
    agenda[0][3] = "03";
    
    agenda[1][0] = "10";
    agenda[1][1] = "11";
    agenda[1][2] = "12";
    agenda[1][3] = "13";
    
    agenda[2][0] = "20";
    agenda[2][1] = "21";
    agenda[2][2] = "22";
    agenda[2][3] = "23";
    
    printf("El numero es %s \n",agenda[2][3]);
    
    printf("\n");
    
    return 0;
}