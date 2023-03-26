<?php
$enlace = mysqli_connect("localhost", "frandam", "frandam", "practica dama");
$peticion = "
UPDATE usuarios
SET 
nombre = '".$_POST['nombre']."',
apellidos = '".$_POST['apellidos']."',
peso = '".$_POST['peso']."',
aficiones = '".$_POST['aficiones']."'
WHERE Identificador = '".$_POST['Identificador']."'";

mysqli_query($enlace,$peticion);
echo '<meta http-equiv="refresh" content="2; url="paneldecontrol.php">';

?>