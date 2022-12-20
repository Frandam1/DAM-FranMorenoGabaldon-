
package logosyconector;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics2D;
import java.awt.image.BufferedImage;
import java.io.File;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import java.sql.ResultSet;
import javax.imageio.ImageIO;


public class Logosyconector {

    
    public static void main(String[] args) {
       
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/cursojava","root","");
            //peticion a la base
            Statement peticion = conexion.createStatement();
            ResultSet resultado = peticion.executeQuery("SELECT * FROM cursos");
            int numero = 1;
            while(resultado.next()){
            System.out.println(resultado.getString(3));
            ///////////////////////////////////////////////////////////////////////
                int anchura = 800; //anchura imagen
                int altura = 400; //altura imagen

                
                BufferedImage imagencacheada = new BufferedImage(anchura,altura,BufferedImage.TYPE_INT_RGB);//creo la imagen con altura anchuran uy color

                Graphics2D graficos = imagencacheada.createGraphics();//digo q voy a pintar algo en esa imagen 2d
                //  /////////////////////////  PARA PINTAR    ///////////////////////////////////////////////
                graficos.setColor(Color.white);
                graficos.fillRect(0, 0, altura, altura);

                
                BufferedImage imagen = null; //recurso VACIO para mas adelante    
                imagen = ImageIO.read(new File("logos/"+resultado.getString(7)));   //importar una imagen
                graficos.drawImage(imagen, 0, 0, 400, 400, null);
                
                BufferedImage imagen2 = null; //recurso VACIO para mas adelante    
                imagen2 = ImageIO.read(new File("fotos/Fotos Jose Vicente Carratala "+String.format("%05d",numero)+".jpg"));   //importar una imagen
                numero++;
                graficos.drawImage(imagen2, 400, 0, 400, 400, null);//
                
                graficos.setColor(Color.white);
                graficos.fillRect(390, 0, 20, 400);
                
                Color negrotransparente = new Color(0, 0, 0, 127);
                graficos.setColor(negrotransparente);
                graficos.fillRect(0, 370, anchura, 400);
                
                graficos.setColor(Color.white);//con su color
                graficos.setFont(new Font("Arial", Font.PLAIN, 30));
                graficos.drawString(resultado.getString(3), 10, 395);//dibujar un texto
                
        
        // /////////////////////      AQUI DEJAS DE PINTAR      /////////////////////////////////
        
        graficos.dispose();//libero el recurso
        
        File archivo = new File("guardado/"+String.format("%05d",numero)+""+resultado.getString(2)+".png");//apunto aa un nuevo archivo
        ImageIO.write(imagencacheada, "png", archivo);//con su librerioa, guardo el png
        numero++;
        
        
            
            
            
            
            ///////////////////////////////////////////////////////////
            
            }
        }catch(Exception e){
            e.printStackTrace();
        }
    }
    }
    

