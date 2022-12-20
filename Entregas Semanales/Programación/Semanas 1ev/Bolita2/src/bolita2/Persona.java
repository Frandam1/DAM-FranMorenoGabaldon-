
package bolita2;


public class Persona {
    
    //Declaro propiedades de la clase
    public float x = 200;
    public float y = 200;
    public float direccion = 0;
    
    public void mueveBola(){                                                    //Creo funcion que mueve la bola
        double min = -0.5;                                                      //Establezco un minimo
        double max = 0.5;                                                       //Y un maximo
        double random = min + Math.random() * (max - min);                      //Crreo uin numero aleatorio enstre el minnimo y el max
        direccion += random;                                                    //vario la direccion aleatoriamente
        x += Math.cos(direccion);                                               //aumento la x en base a la direccion y su coseno
        y += Math.sin(direccion);                                               //aumento la y en base a la direeccion y su seno
        if(x > 400){direccion += Math.PI;}                                      //en caso que x- que 400, pega la vuelta
        if(x < 0){direccion += Math.PI;}                                        //peg la vuelta al colisionar(3)
        if(y > 400){direccion += Math.PI;}
        if(y < 0){direccion += Math.PI;}
    }
    
}
