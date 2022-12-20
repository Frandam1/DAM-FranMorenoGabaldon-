
package proyecto.imagenes;

import java.awt.Color;
import java.awt.Graphics2D;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import javax.imageio.ImageIO;

/**
 *
 * @author fran
 */
public class ProyectoImagenes {

    public static void main(String[] args) throws IOException {
        int anchura = 800; //anchura imagen
        int altura = 400; //altura imagen
        
        BufferedImage imagen = null; //recurso VACIO para mas adelante
        BufferedImage imagencacheada = new BufferedImage(anchura,altura,BufferedImage.TYPE_INT_RGB);//creo la imagen con altura anchuran uy color
       
        Graphics2D graficos = imagencacheada.createGraphics();//digo q voy a pintar algo en esa imagen 2d
        //  /////////////////////////  PARA PINTAR    ///////////////////////////////////////////////
        graficos.setColor(Color.white);
        graficos.fillRect(0, 0, altura, altura);
        
        graficos.setColor(Color.blue);//q lo voy a hacer en color rojo
        graficos.fillRect(20, 20, 300, 300);//que voy a ahcer un rectanguo
        
        graficos.setColor(Color.orange);//con su color
        graficos.drawString("PRACTICA4", 300, 200);//dibujar un texto
        
       
        imagen = ImageIO.read(new File("logos/JAVA.png"));//importar una imagen
        graficos.drawImage(imagen, 0, 0, 400, 400, null);//
        
        // /////////////////////      AQUI DEJAS DE PINTAR      /////////////////////////////////
        
        graficos.dispose();//libero el recurso
        for(int i = 0;i<10;i++){
            File archivo = new File("guardado/primeraprueba"+i+".png");//apunto aa un nuevo archivo
            ImageIO.write(imagencacheada, "png", archivo);//con su librerioa, guardo el png
        
        }
        
        
        
       
        
    }
    
}
