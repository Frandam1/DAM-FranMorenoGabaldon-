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

		try{    
		    Class.forName("com.mysql.jdbc.Driver");
		    Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/cursojava","javatres","javatres");
		    //Peticion
		    Statement peticion = conexion.createStatement();
		    peticion.execute("INSERT INTO usuarios VALUES (NULL,'"+request.getParameter("usuario")+"','"+request.getParameter("password")+"','"+request.getParameter("nombre")+"')");
		}catch(Exception e){
		    e.printStackTrace();
		}
	
		out.println("<meta http-equiv='refresh' content='3; url=paneldecontrol.jsp'>");
	
	%>

</body>
</html>