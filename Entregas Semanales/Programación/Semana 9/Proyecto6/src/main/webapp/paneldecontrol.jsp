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
	Ey que tal
	<h1>Gestion de usurios</h1>
	<table border="1">
		<tr><th>Usuario</th><th>Contraseña</th><th>Nombre</th></tr>
		<tr><form action="insertar.jsp" method="POST">
			<td><input type="text" name="usuario" placeholder="usuario"></td>
			<td><input type="text" name="password" placeholder="contraseña"></td>
			<td><input type="text" name="nombre" placeholder="nombre"></td>
			<td><input type="submit" value="enviar" placeholder="usuario"></td>
		
		</form></tr>
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
        ("SELECT * FROM usuarios");
        //Mientras reusltado teng alineas
        while(resultado.next()){
        	out.println("<tr><td>"+resultado.getString("usuario")+"</td><td>"+resultado.getString("contrasena")+"</td><td>"+resultado.getString("nombre")+"</td>");
        	out.println("<td><a href='verf.jsp?id="+resultado.getString("Identificador")+"'>Ver</a></td>");
        	out.println("<td><a href='actualizar.jsp?id="+resultado.getString("Identificador")+"'>Actualizar</a></td>");
        	out.println("<td><a href='eliminar.jsp?id="+resultado.getString("Identificador")+"'>Eliminar</a></td>");
        	out.println("</tr>");
        	
        	
        	
        	
        	
        }
    }catch(Exception e){
        e.printStackTrace();
    }
	
	
	
	%>
		
		
	</table>
	
	
	
	
	<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
      google.charts.load('current', {'packages':['corechart']});
      google.charts.setOnLoadCallback(drawChart);

      function drawChart() {

        var data = google.visualization.arrayToDataTable([
          ['Task', 'Hours per Day'],
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
  	        ("SELECT * FROM `apellidos` WHERE `apellido` LIKE '%EZ%' ORDER BY 'ap1' DESC LIMIT 10;");
  	        //Mientras reusltado teng alineas
  	        while(resultado.next()){
  	        	out.println("['"+resultado.getString("apellido")+"',"+resultado.getString("ap1")+"],");
  	        	
  	        	
  	        	
  	        	
  	        	
  	        }
  	    }catch(Exception e){
  	        e.printStackTrace();
  	    }
  		
  		
  		
  		%>
        ]);

        var options = {
          title: 'Apellidos con EZ en el nombre'
        };

        var chart = new google.visualization.PieChart(document.getElementById('piechart'));

        chart.draw(data, options);
      }
    </script>
	
	<div id="piechart" style="width: 900px; height: 500px;"></div>
	
	
	
	
</body>
</html>