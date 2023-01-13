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
<form action="procesaactualizar.jsp" method="POST">

<%
	
	try{    
        Class.forName("com.mysql.jdbc.Driver");
        //conexion
        Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/cursojava","javatres","javatres");
        //Preparo Peticion
        Statement peticion = conexion.createStatement();
        //Hacemos la peticion
        ResultSet resultado = 
        peticion.executeQuery
        ("SELECT * FROM usuarios WHERE Identificador = '"+request.getParameter("id")+"' ");
        //Mientras reusltado teng alineas
        while(resultado.next()){
        	out.println("<input type='hidden' name='identificador' value='"+resultado.getString("Identificador")+"'>");
        	out.println("Usuario:<input type='text' name='usuario' value='"+resultado.getString("usuario")+"'> <br>");
        	out.println("Contraseña:<input type='text' name='contrasena' value='"+resultado.getString("contrasena")+"'> <br>");
        	out.println("Nombre:<input type='text' name='nombre' value='"+resultado.getString("nombre")+"'> <br>");
        	}
    }catch(Exception e){
        e.printStackTrace();
    }
	
	
	
	%>
<input type="submit" value="Enviaer">
</form>
	
	
</body>
</html>