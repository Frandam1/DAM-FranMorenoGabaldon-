
package graficabbdds;
import javax.swing.JFrame;
import javax.swing.JPanel;
import java.awt.Graphics;
import java.awt.Graphics2D;
import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Random;


public class GraficaBBDDS extends JPanel {
   
    @Override public void paint(Graphics g){
        super.paint(g);
        Graphics2D misgraficos = (Graphics2D) g;
        int basegrafica = 360;
        misgraficos.drawLine(10, 10, 10, 360);                                  
        misgraficos.drawLine(10, basegrafica, 360, basegrafica);
        int[] barras = new int[] {34,34,67,299,232,25,50,67,123,100,66} ;
        /// Conectamos y saco datos /////////////////////////
        String url = "jdbc:sqlite:C://sqlite/Examenregistros.db"; 
        Connection conn = null;
        try {
            String sql = "SELECT * FROM Pregunta1";
            conn = DriverManager.getConnection(url);            
            Statement stmt  = conn.createStatement();
            ResultSet rs = stmt.executeQuery(sql);
            int contador = 0;
            while(rs.next()){
                System.out.println(rs.getInt("hora del dia") + "\t" +
                                   rs.getString("numero de visitas"));
                
        ///  Cojo esos datos y los meto en una matriz /////////////////////////
                barras[contador] = Integer.parseInt(rs.getString("numero"))/10;
                contador++;
            }
                                   
            } catch (SQLException e){
            System.out.println(e.getMessage());
            }
            String sql = "SELECT * FROM Pregunta1";
            
        ///  Pinto esos datos en una grafica /////////////////////////    
            
      
        for(int i = 0; i<barras.length;i++){
           // int randomNum = ThreadLocalRandom.current().nextInt(10, 300 + 1);
           int randomNum = barras[i];
        misgraficos.fillRect(i*30+20,basegrafica-randomNum, 20, randomNum);
        }
        
    }

    public static void main(String[] args) {
        // TODO code application logic here
        JFrame marco = new JFrame("grafica");
        GraficaBBDDS mimarco = new GraficaBBDDS();
        marco.add(mimarco);
        marco.setSize(400, 400);
        marco.setVisible(true);
        marco.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
    }
    
}
