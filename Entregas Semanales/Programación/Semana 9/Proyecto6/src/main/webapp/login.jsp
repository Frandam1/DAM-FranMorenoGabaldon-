<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ page import = "java.sql.Connection" %>
<%@ page import = "java.sql.DriverManager" %>
<%@ page import = "java.sql.Statement" %>
<%@ page import = "java.sql.ResultSet" %>

    



<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
	boolean entras = false;
	try{    
        Class.forName("com.mysql.jdbc.Driver");
        //conexion
        Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/cursojava","javatres","javatres");
        //Preparo Peticion
        Statement peticion = conexion.createStatement();
        //Hacemos la peticion
        ResultSet resultado = 
        peticion.executeQuery
        ("SELECT * FROM usuarios WHERE usuario = '"+request.getParameter("usuario")+"' AND contrasena = '"+request.getParameter("password")+"'");
        //Mientras reusltado teng alineas
        while(resultado.next()){
        	entras = true;
        }
    }catch(Exception e){
        e.printStackTrace();
    }
	if(entras == true){
		out.println("para adentro");
		out.println("<meta http-equiv='refresh' content='3; url=paneldecontrol.jsp'>");
	}else{
		out.println("no para adentro");
		out.println("<meta http-equiv='refresh' content='3; url=index.html'>");
	}
	
	
	
	%>
</body>
</html>