

package com.mycompany.metodos1;

/**
 *
 * @author fran
 */
public class Metodos1 {

    public static void main(String[] args) {
        saluda("fran");
        saluda("maria");
        saluda("ivan");
        saluda("fran");
        saluda("fran","lunes");
        
    }
    
    public static void saluda(String nombre){
        System.out.println("Hola "+nombre+" como estas?");
    }
    
    public static void saluda(String nombre,String dia){
        System.out.println("Hola "+nombre+" como estas? Hoy es "+dia+"" );
    }
}
        

