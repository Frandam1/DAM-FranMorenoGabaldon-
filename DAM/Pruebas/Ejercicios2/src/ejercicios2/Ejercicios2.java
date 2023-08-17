
package ejercicios2;


public class Ejercicios2 {

    
    public static void main(String[] args) {
        // TODO code application logic here
        System.out.print("Introduce el numero de horas trabajadas: ");
        int horasTrabajadas = Integer.parseInt(System.console().readLine());
        System.out.println("Tu salario es " + (horasTrabajadas * 12) + " euros.");
    }
    
}
