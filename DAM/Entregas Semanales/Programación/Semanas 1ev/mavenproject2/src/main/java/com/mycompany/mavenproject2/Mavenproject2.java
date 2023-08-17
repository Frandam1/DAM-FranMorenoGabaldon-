/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Project/Maven2/JavaApp/src/main/java/${packagePath}/${mainClassName}.java to edit this template
 */

package com.mycompany.mavenproject2;

/**
 *
 * @author fran
 */
public class Mavenproject2 {

    public static void main(String[] args) {
        
        // Operadores
        
        float operador1 = 13;
        float operador2 = 23;
        
        //Suma
        float suma = operador1 + operador2;
        System.out.println("La suma de estos dos valores es: "+suma);
        //Resta
        float resta = operador1 - operador2;
        System.out.println("LA resta de estos valores es: "+resta);
        //Multiplicasio
        float producto = operador1 * operador2;
        System.out.println("La multiplicaion de estos valores es "+producto);
        //Division
        float division = operador1 / operador2;
        System.out.println("La division de estos valores es "+division);
        
        //Operadores logicos de igualdad
        boolean igualdad = operador1 == operador2;
        System.out.println("LA comparacion es: "+igualdad);
        boolean noigualdad = operador1 != operador2;
        System.out.println("LA comparacion es: "+noigualdad);
        
        //Operadores logicos de mayor que
        boolean mayorque = operador1 > operador2;
        System.out.println("LA comparacion es: "+mayorque);
       
        
        //Operadores logicos de menor que
        boolean menorque = operador1 < operador2;
        System.out.println("LA comparacion es: "+menorque);
        
        int edad = 42;
        int dia = 4;
        
        System.out.println("Comprobemos si "+(edad > 40 && dia == 5));
        System.out.println("Comprobemos ahora si "+(edad > 40 || dia == 5));
        System.out.println("Comprobemos ahora si 2 "+(edad > 43 || dia == 5));
        
        String diadelasemana = "lunes";
        char caracter = 'a';
        
        System.out.println("La cadena es: "+diadelasemana);
        System.out.println("La cadena es: "+diadelasemana.length());
        System.out.println("La cadena es: "+(diadelasemana.equals("lunes")));
        
        
        
        
        
        
    }
}
