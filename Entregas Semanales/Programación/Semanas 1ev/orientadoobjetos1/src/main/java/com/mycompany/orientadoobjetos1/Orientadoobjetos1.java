/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Project/Maven2/JavaApp/src/main/java/${packagePath}/${mainClassName}.java to edit this template
 */

package com.mycompany.orientadoobjetos1;

/**
 *
 * @author fran
 */
public class Orientadoobjetos1 {

    public static void main(String[] args) {
        
        Persona fran = new Persona();
        Persona luis = new Persona();
        System.out.println("Mi nobre es :"+fran.nombre);
        fran.nombre = "Fran";
        fran.edad = 34;
        luis.nombre = "Luis";
        luis.edad = 23;
        /*
        System.out.println("Mi nobre es :"+fran.nombre);
        System.out.println("Mi nobre es :"+fran.edad);
        System.out.println("Mi nobre es :"+luis.nombre);
        System.out.println("Mi nobre es :"+luis.edad);
        */
        
        fran.saluda();
                
    }
}
