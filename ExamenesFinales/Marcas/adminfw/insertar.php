<?php

$enlace = mysqli_connect("localhost", "root", "", "examen3");



$peticion = "INSERT INTO personas
VALUES
(NULL,
'".$_POST['nombre']."',
'".$_POST['apellidos']."',
'".$_POST['peso']."',
'".$_POST['aficiones']."'
";

$resultado = mysqli_query($enlace,$peticion);
echo '<meta http-equiv="refresh" content="2; url=panelcontrol.php">';

?>