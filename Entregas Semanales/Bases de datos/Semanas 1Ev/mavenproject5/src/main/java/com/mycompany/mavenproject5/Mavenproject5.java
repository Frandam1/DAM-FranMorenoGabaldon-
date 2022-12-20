/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Project/Maven2/JavaApp/src/main/java/${packagePath}/${mainClassName}.java to edit this template
 */

package com.mycompany.mavenproject5;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author fran
 */
public class Mavenproject5 {

    public static void main(String[] args) {
    
    //Declaramos los datos de la conexiona  la base de datos
    private static final String driver="com.mysql.jdbc.Driver";
    private static final String user="root";
    private static final String pass="";
    private static final String url="jdbc:mysql://localhost:3306/cursojava";
    // Prueba "agenda"
    // Funcion para conectarse a la base
    public void conector() throws SQLException, ClassNotFoundException{
        //reseteamos a null
        Object con = null;
        try{
            Class.forName(driver);
            //conexion
            con=(Connection)DriverManager.getConnection(url, user, pass);
            //Usamos el objeto sentencia para procesar la peticion
            Statement peticion = conexion.createStatement();
            //Si se conecta
            if (con!=null){
                jLabel1.setText("Todo bien");
                ResultSet resultado = (ResultSet) peticion.executeQuery("SELECT * FROM agenda");
                while(resultado.next()){
            System.out.println(resultado.getString(1)+"-"+resultado.getString(2)+"-"resultado.getString(3));
            }
        }
        //si NO se conecta, mostramos:
        catch (ClassNotFoundException | SQLException e){
            jLabel1.setText("Error" + e);
        }
    }
}
