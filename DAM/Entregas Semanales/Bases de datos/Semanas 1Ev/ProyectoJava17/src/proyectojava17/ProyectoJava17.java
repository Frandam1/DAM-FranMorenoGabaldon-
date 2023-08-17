/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package proyectojava17;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;


public class ProyectoJava17 {

    
    public static void main(String[] args) {
       
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/cursojava","root","");
            //peticion a la base
            Statement peticion = conexion.createStatement();
            peticion.execute("INSERT INTO agenda VALUES (NULL,'jaime','45765','jaime@correo.com')");
        }catch(Exception e){
            e.printStackTrace();
        }
    }
    
}
