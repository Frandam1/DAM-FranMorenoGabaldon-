<?php
  
session_start();
// Abro la conexion con BBDD
$enlace = mysqli_connect("localhost", "frandam", "frandam", "practica dama");



$peticion = "

SELECT * FROM usuarios
WHERE
nombre = '".$_POST['usuario']."'
AND
apellidos = '".$_POST['contrasena']."'
LIMIT 1
";

$resultado = mysqli_query($enlace,$peticion);

$pasas = false;
$_SESSION['pasas'] = false;


if ($fila = $resultado->fetch_assoc()) {
  //echo $fila['nombre']."<br>";
    $pasas = true;
    $_SESSION['nombre'] = $fila['nombre'];
    $_SESSION['apellidos'] = $fila['apellidos'];
}else{
    //echo "No existe";
    $pasas= false;
}

if($pasas){
    echo "te doy acceso";
    $_SESSION['pasas'] = true;
    echo '<meta http-equiv="refresh" content="3; url=panelcontrol.php">';
}else{
    $_SESSION['pasas'] = false;
    echo "no te doy";
    echo '<meta http-equiv="refresh" content="2; url=index.html">';
}                                                

mysqli_close($enlace);



?>