<?php
  
session_start();
// Abro la conexion con BBDD
include "../admin/conexion.php";

$peticion = "";

if (isset($_POST['nombre']) && isset($_POST['apellidos']) && isset($_POST['peso']) && isset($_POST['aficiones'])) {

$peticion = "

SELECT * FROM personas
WHERE
nombre = '".$_POST['nombre']."'
AND
apellidos = '".$_POST['apellidos']."'
AND
peso = '".$_POST['peso']."'
AND
aficiones = '".$_POST['aficiones']."'
LIMIT 1
";

} else {
    echo "algo falla";
}

$resultado = mysqli_query($enlace,$peticion);

$pasas = false;
$_SESSION['pasas'] = false;


if ($fila = $resultado->fetch_assoc()) {
  echo $fila['nombre']."<br>";
    $pasas = true;
    $_SESSION['nombre'] = $fila['nombre'];
    $_SESSION['contrasena'] = $fila['apellidos'];
}else{
    //echo "No existe";
    $pasas= false;
}

if($pasas){
    echo "te doy acceso";
    $_SESSION['pasas'] = true;
    echo '<meta http-equiv="refresh" content="3; url=escritorio.php">';
}else{
    $_SESSION['pasas'] = false;
    echo "no te doy";
    echo '<meta http-equiv="refresh" content="2; url=escritorio.php">';
}                                                

mysqli_close($enlace);



?>