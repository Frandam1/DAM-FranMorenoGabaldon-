<?php

// Abro la conexion con BBDD
$enlace = mysqli_connect("localhost", "frandam", "frandam", "practica dama");

// Le pido algo

$resultado = mysqli_query($enlace, "SELECT * FROM usuarios");

//Devuelvo por pantalla

while ($fila = $resultado->fetch_assoc()) {
  echo $fila['nombre']."<br>";  
}
    
//Cierro los recuross

mysqli_close($enlace);
?>