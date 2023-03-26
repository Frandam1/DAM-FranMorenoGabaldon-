#include <stdio.h>

int main(int argc, char *argv[]){
    // Array multidimensional 
    
    char* agenda[10][5];
    
    agenda[0][0] = "Fran1";
    agenda[0][1] = "1234";
    agenda[0][2] = "Callefran";
    agenda[0][3] = "fran@gmail.com";
    agenda[0][4] = "rojo";
    
    agenda[1][0] = "Fran2";
    agenda[1][1] = "12345";
    agenda[1][2] = "Callefran2";
    agenda[1][3] = "fran1@gmail.com";
    agenda[1][4] = "azu";
    
    agenda[2][0] = "Fran3";
    agenda[2][1] = "12345";
    agenda[2][2] = "Callefran3";
    agenda[2][3] = "fran2@gmail.com";
    agenda[2][4] = "naranja";
    
    agenda[3][0] = "Fran3";
    agenda[3][1] = "123456";
    agenda[3][2] = "Callefran4";
    agenda[3][3] = "fran3@gmail.com";
    agenda[3][4] = "verde";
    
    agenda[4][0] = "Fran4";
    agenda[4][1] = "1234567";
    agenda[4][2] = "Callefran5";
    agenda[4][3] = "fran4@gmail.com";
    agenda[4][4] = "rosa";
    
    for(int registro = 0; registro <= 5; registro = registro + 1){
        for(int campo = 0;campo<=4;campo = campo + 1){
            printf("-%s  \n",agenda[registro][campo]);
        }
        printf("\n");
    }
    printf("\n");
    
    return 0;
}