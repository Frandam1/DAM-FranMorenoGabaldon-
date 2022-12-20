
package practica6añadido;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class Practica6añadido {

    
    public static void main(String[] args) {
        // TODO code application logic here
        String correo = "^[A-Z0-9._%+-]+@[A-Z0-9.-]+\\.[A-Z]{2,6}$";
            Pattern patron = Pattern.compile(correo,Pattern.CASE_INSENSITIVE);
            Matcher frase = patron.matcher("fran@gmail.com");
        
        boolean encontrado = frase.find();
        
        if(encontrado){
        System.out.println("Si que es");
        }else{
        System.out.println("NO lo es");
        }
    }
    
}
