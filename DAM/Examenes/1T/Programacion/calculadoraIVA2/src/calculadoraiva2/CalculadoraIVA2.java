/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package calculadoraiva2;

/**
 *
 * @author fran
 */
public class CalculadoraIVA2 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        float base = 1000;
        float irpf = 15;
        float iva = 21;
        float irpftotal;
        float subtotal;
        float ivaneto;
        float total;
        
        irpftotal = base*(irpf/100);
        subtotal = base - irpftotal;
        ivaneto = subtotal*(iva/100);
        total = subtotal + ivaneto;
        
        System.out.println("El % de irpf a retener es "+irpftotal);
        System.out.println("El subtotal es "+subtotal);
        System.out.println("El IVA a pagar es "+ivaneto);
        System.out.println("El total neto a apagar es "+total);
    }
    
}
