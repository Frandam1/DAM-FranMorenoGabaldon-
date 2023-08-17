<html>
    <head>
    <script src="https://kit.fontawesome.com/edd3afe546.js" crossorigin="anonymous"></script>
    <style>
        body,html{
            
            background: white;
            font-family: sans-serif;
            padding: 0px;
            margin: 0px;
        }    
        header{
            background: black;
            color: wheat;
            padding: 10px;
            width: 100%;
            height: 20px;
        }
    </style>
    </head>
    <body>
<?php
    session_start();
    if(!isset($_SESSION['pasas']) || $_SESSION['pasas'] == false){
        die("no te cueles");
    }
    echo "<header>Bienvenido,".$_SESSION['nombre']." ".$_SESSION['apellidos']."<br>";   
echo "<a href='logout.php'>Cerrar sesion</a><br></header>"

?>

<h1>Gestion usuraios</h1>

<table border=1>
    <tr>
        <th>Usuarios</th>
        <th>Apellido</th>
        <th>Peso</th>
        <th>aficion</th>
    </tr>
<?php
include "conexion.php";
$peticion = "SELECT * FROM usuarios";
$resultado = mysqli_query($enlace,$peticion);
while($fila = $resultado->fetch_assoc()) {
  echo '<tr>
            <td>'.$fila['nombre'].'</td>
            <td>'.$fila['apellidos'].'</td>
            <td>'.$fila['peso'].'</td>
            <td>'.$fila['aficiones'].'</td>
            <td><a href="ver.php?id='.$fila['Identificador'].'"><i class="fa-solid fa-eye"></i></a></td>
            <td><a href="actualizar.php?id='.$fila['Identificador'].'">Actualizar</a></td>
            <td><a href="eliminar.php?id='.$fila['Identificador'].'"><i class="fa fa-trash" aria-hidden="true"></i></a></td>
  
        </tr>';
}

?>
 
    <tr>
        <form action="insertar.php" method="POST">
            <td><input type="text" name="nombre" placeholder="nombre"></td>
            <td><input type="text" name="apellidos" placeholder="apellidos"></td>
            <td><input type="text" name="peso" placeholder="peso"></td>
            <td><input type="text" name="aficiones" placeholder="aficiones"></td>
            <td><input type="text" name="edad" placeholder="edad"></td>
            <td><input type="submit" value="enviar"></td>
        </form>
    
    </tr>
    
    -->
</table>
        
        </body>
</html>