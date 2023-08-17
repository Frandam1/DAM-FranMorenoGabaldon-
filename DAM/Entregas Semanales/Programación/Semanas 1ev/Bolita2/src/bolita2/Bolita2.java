
package bolita2;

import java.awt.Graphics;
import java.awt.Graphics2D;
import java.awt.RenderingHints;
import javax.swing.JFrame;
import javax.swing.JPanel;

public class Bolita2 extends JPanel {
    int numerobolas = 30;
    Persona bolita[] = new Persona[numerobolas];
    
    public void inicio(){
        for(int i = 0;i<numerobolas;i++){
        bolita[i] = new Persona();
        
        }
    }
    
    @Override
    public void paint(Graphics g){                                              //Sobreescribo el metodo de pintura por defecto
        super.paint(g);                                                         //pinta en la ventana principal
        Graphics2D graf2d = (Graphics2D) g;                                     //Creo un nuevo elemento de graficos 2d
        
        graf2d.setRenderingHint(RenderingHints.KEY_ANTIALIASING, RenderingHints.VALUE_ANTIALIAS_ON);//Activo suavizado de lineas
        for(int i = 0;i<numerobolas;i++){
        graf2d.fillOval((int)bolita[i].x, (int)bolita[i].y, 20, 20);
        }//Dibujo un ovalo
    }
    public void muevete(){
        for(int i = 0;i<numerobolas;i++){
        bolita[i].mueveBola();
        }
    }
    public static void main(String[] args) throws InterruptedException {        //funcion prinipal
        
        JFrame marco = new JFrame("animacion");//,arco swing
        Bolita2 animacion = new Bolita2();  //instancia del proyrcto
        marco.add(animacion);                                                   //al marco, le añado la animacion
        marco.setSize(400, 400);                                                //digo dimensiones ventana
        marco.setVisible(true);                                                 //que quiero que la ventana sea visible
        marco.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE); 
        animacion.inicio();//que quiero cerrar el proceso al cerrar ventana
        
        while(true){//bucle uinfinito
            animacion.muevete();                                              //mnueve la bola
            animacion.repaint();                                                //repinta lo que hay en pantalla
            
            Thread.sleep(10);                                                   //para la ejecucion un tiempo para que el bucle este controlado
        }
    }
    
    
}
