<?php
$enlace = mysqli_connect("localhost", "root", "", "examen3");
$peticion = "DELETE FROM ".$_GET['tabla']." WHERE Identificador = ".$_GET['id']."";
mysqli_query($enlace,$peticion);
echo '<meta http-equiv="refresh" content="2; url=index.php">';

?>