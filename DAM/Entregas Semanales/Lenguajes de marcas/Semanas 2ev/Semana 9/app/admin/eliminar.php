<?php
$enlace = mysqli_connect("localhost", "frandam", "frandam", "practica dama");
$peticion = "DELETE FROM usuarios WHERE Identificador = ".$_GET['id']."";
mysqli_query($enlace,$peticion);
echo '<meta http-equiv="refresh" content="2; url=panelcontrol.php">';

?>