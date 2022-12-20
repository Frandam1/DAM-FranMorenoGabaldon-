
package graficaradial;

import java.awt.Color;
import javax.swing.JFrame;
import javax.swing.JPanel;
import java.awt.Graphics;
import java.awt.Graphics2D;
import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;



public class GraficaRadial extends JPanel {
    
    private static int getRandomNumberInRange(int min, int max){
        if (min >= max){
            throw new IllegalArgumentException("dede ser mas grande");
        }
        
        Random r = new Random();
        return r.nextInt((max - min) + 1) + min;
    
    
    }

    @Override public void paint(Graphics g){
        super.paint(g);
        Graphics2D misgraficos = (Graphics2D) g;
        //datos de array
        float[] barras = new float[] {34,34,34,34};
        List misbarras = new ArrayList();
        
        
        //System.out.println("La suma de las porciones es "+suma);
        int acontinuacion = 0;
        ////////// Conexion BBDD///////////////////
         String url = "jdbc:sqlite:C://sqlite/registros.db"; 
         
         Connection conn = null;
        try {
            String sql = "SELECT * FROM windows";
            conn = DriverManager.getConnection(url);            
            Statement stmt  = conn.createStatement();
            ResultSet rs = stmt.executeQuery(sql);
            
            while(rs.next()){misbarras.add(Integer.parseInt(rs.getString("numero"))); }
            sql = "SELECT * FROM mac";
            rs = stmt.executeQuery(sql);
            while(rs.next()){misbarras.add(Integer.parseInt(rs.getString("numero"))); }
            sql = "SELECT * FROM ubuntu";
            rs = stmt.executeQuery(sql);
            while(rs.next()){misbarras.add(Integer.parseInt(rs.getString("numero"))); }
            sql = "SELECT * FROM android";
            rs = stmt.executeQuery(sql);
            while(rs.next()){misbarras.add(Integer.parseInt(rs.getString("numero"))); }
            sql = "SELECT * FROM iphone";
            rs = stmt.executeQuery(sql);
            while(rs.next()){misbarras.add(Integer.parseInt(rs.getString("numero"))); }
                                   
            } catch (SQLException e){
            System.out.println(e.getMessage());
            }
        int tamanio = misbarras.size();
        float suma = 0;
        for(Object numero : misbarras){
            System.out.println(numero);
            suma += (int)numero;
        }
        System.out.println("La suma es"+suma);
        System.out.println(misbarras.size());
        
        
        for(Object numero : misbarras){
            int rojo = getRandomNumberInRange(0,255);
            int verde = getRandomNumberInRange(0,255);
            int azul = getRandomNumberInRange(0,255);
            Color micolor = new Color(rojo, verde, azul);
            misgraficos.setColor(micolor);
            int angulo = (int)((((int)numero/suma)*360));
            //System.out.println("quesi"+angulo);
            misgraficos.fillArc(0, 10, 380, 380, acontinuacion , angulo);
            acontinuacion += angulo; 
        }
        misgraficos.setColor(Color.white);
        misgraficos.fillArc(150, 160, 80, 80, 0, 360);
            
    }
    public static void main(String[] args) {
        
       JFrame marco = new JFrame("grafica");
        GraficaRadial mimarco = new GraficaRadial();
        marco.add(mimarco);
        marco.setSize(400, 400);
        marco.setVisible(true);
        marco.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
    }
    
}
