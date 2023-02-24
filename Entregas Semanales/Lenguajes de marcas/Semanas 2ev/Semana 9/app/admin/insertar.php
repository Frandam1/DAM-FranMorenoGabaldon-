<?php

$enlace = mysqli_connect("localhost", "frandam", "frandam", "practica dama");



$peticion = "INSERT INTO
usuarios
VALUES
(NULL,
'".$_POST['nombre']."',
'".$_POST['apellidos']."',
'".$_POST['peso']."',
'".$_POST['aficiones']."',
'".$_POST['edad']."')
";

$resultado = mysqli_query($enlace,$peticion);
echo '<meta http-equiv="refresh" content="2; url=panelcontrol.php">';

?>