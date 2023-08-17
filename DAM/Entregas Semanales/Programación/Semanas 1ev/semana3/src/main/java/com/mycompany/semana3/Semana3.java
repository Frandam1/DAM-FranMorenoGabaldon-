/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Project/Maven2/JavaApp/src/main/java/${packagePath}/${mainClassName}.java to edit this template
 */

package com.mycompany.semana3;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.Scanner;



public class Semana3 {

    public static void main(String[] args) {
       
       try{
           FileWriter miarchivo = new FileWriter("archivo.txt");
           miarchivo.write("Esto esta escrito desde JAVA");
           miarchivo.close();//los recursos se deben de cerrar
       }catch(IOException e){
           e.printStackTrace();
       }
       try{
           File miotroarchivo = new File("archivo2.txt");
           Scanner lector = new Scanner(miotroarchivo);
           while(lector.hasNextLine()){
               System.out.println(lector.nextLine());
           }
       }catch(IOException e){
           e.printStackTrace();
       }
    }
}
