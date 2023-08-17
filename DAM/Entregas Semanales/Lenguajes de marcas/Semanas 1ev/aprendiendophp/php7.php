<?php
   echo "El usuario es ".$_POST['nombre']."<br>"; 

// Abro la conexion con BBDD
$enlace = mysqli_connect("localhost", "frandam", "frandam", "practica dama");

// Le pido algo

$resultado = mysqli_query($enlace, "

INSERT INTO usuarios
VALUES(
    NULL,

    '".$_POST['nombre']."',
    '".$_POST['apellidos']."',
    '".$_POST['peso']."',
    '".$_POST['aficiones']."',
    '".$_POST['edad']."'

)



");

//Cierro los recuross

mysqli_close($enlace);

echo "El registro esta OK";

?>