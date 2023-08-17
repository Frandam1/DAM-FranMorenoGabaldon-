
package jpanelsygrafics2d;

import java.awt.Graphics;
import java.awt.Graphics2D;
import java.awt.RenderingHints;
import javax.swing.JFrame;
import javax.swing.JPanel;


public class Jpanelsygrafics2d extends JPanel {
    
    Persona bolita = new Persona();
    float x = 200;                                                              // Posicion Inicial
    float y = 200;                                                              //Defino Y inicial
    float direccion = 2;                                                        //Direccion inicial
    @Override
    public void paint(Graphics g){                                              //Sobreescribo el metodo de pintura por defecto
        super.paint(g);                                                         //pinta en la ventana principal
        Graphics2D graf2d = (Graphics2D) g;                                     //Creo un nuevo elemento de graficos 2d
        
        graf2d.setRenderingHint(RenderingHints.KEY_ANTIALIASING, RenderingHints.VALUE_ANTIALIAS_ON);//Activo suavizado de lineas
        
        graf2d.fillOval((int)x, (int)y, 20, 20);                                //Dibujo un ovalo
    }
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
    public static void main(String[] args) throws InterruptedException {        //funcion prinipal
        
        JFrame marco = new JFrame("animacion");                                 //,arco swing
        Jpanelsygrafics2d animacion = new Jpanelsygrafics2d();                  //instancia del proyrcto
        marco.add(animacion);                                                   //al marco, le añado la animacion
        marco.setSize(400, 400);                                                //digo dimensiones ventana
        
        marco.setVisible(true);                                                 //que quiero que la ventana sea visible
        marco.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);                   //que quiero cerrar el proceso al cerrar ventana
        
        while(true){//bucle uinfinito
            animacion.mueveBola();                                              //mnueve la bola
            animacion.repaint();                                                //repinta lo que hay en pantalla
            System.out.println("Hola");
            Thread.sleep(10);                                                   //para la ejecucion un tiempo para que el bucle este controlado
        }
    }
    
    
}
