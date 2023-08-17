

package logicaex;

//La velocidada de la luz es 299798.458 km/s, la distania de la tierra al sol es 150000000 km. 

import java.util.Scanner;

//Calcula los segundos que tarda la liz en llegar
// calcula minutos y segundos


public class LogicaEx {

    
    public static void main(String[] args) {
        // TODO code application logic here
        double velocidad = 299798.458;
        int distancia = 150000000;
        
        double segundos = distancia/velocidad;
        double minutos = segundos/60;
        
        
        double redondeo = Math.floor(minutos);
        var  minutos2 = redondeo%60;
        double resto = segundos%60;
        var redondeo2 = Math.floor(resto);
        
        
        System.out.println("La luz tarda "+segundos+" segundos en llegar");
        
        System.out.println(redondeo2);
        
        System.out.println("La luz tarda "+minutos2+" minutos con "+redondeo2+" segundos en llegar");
        
        
        /* En un palet caben 15 cajas, en un camio 33 palets, tenemos 2000 cajas.
        Queremos saber cuantos camiones y cuantos palets necesitamos para las cajas
        */
        
        int caja = 1;
        int palet = caja*15;
        int camion = palet*33;
        
        int totalpalet = 2000/15;
        int totalcamion = camion/totalpalet;
        System.out.println(camion);
        System.out.println();
        
        System.out.println("Necesitamos "+totalpalet+" palets y "+totalcamion+" camiones en total.");
    }
     /* Haz un programa que sque por pantalla 
        - numneros del  al 100 
        - que sean divisible por 5
        -que sean divisibles por 7
        ///// es un bucle for, resto entero, booleanos//////
        */
        
        /* Buble for
        
        for(int i = 0; // índice de control
        i < 100;   // condición booleana
        i++)      // modificación del índice tras cada bucle
    {
      // Lo que quieras que se ejecute varias veces
    }
        */
    int n = 100;
    int x = 5;
    int i;
    
    for (i=1; i <=n; i++){
    if(i % x == 0)
        System.out.println(i);
    }
}
        
        
       
        
        
        
    
    



    

