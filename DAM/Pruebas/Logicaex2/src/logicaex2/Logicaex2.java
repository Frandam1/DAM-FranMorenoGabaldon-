/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package logicaex2;

import java.util.Scanner;

/**
 *
 * @author fran
 */
public class Logicaex2 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        Scanner sc = new Scanner(System.in);

            int n = 1000; // Cuenta
            int x = 7; // Múltiplo
            int z = 5; //otro
            int i; // Contador

          

           for (i=1; i <=n; i++) {

           if (i % x == 0 && i % z == 0)
            System.out.println(i);

   }
    }
    
}
