<?php

$mysqli = new mysqli("localhost", "formularios", "formularios", "formularios");

if ($mysqli->connect_errno) {
    printf("Conexión fallida: %s\n", $mysqli->connect_error);
    exit();
}

$consulta = "SELECT * FROM desplegable WHERE idparent = ''";
$resultado = $mysqli->query($consulta);

while ($fila = $resultado->fetch_assoc()) {
		echo '<select id="'.$fila['id'].'"><option></option>';
		$consulta2 = "SELECT * FROM opciones WHERE iddesplegable2 = '".$fila['id']."'";
		$resultado2 = $mysqli->query($consulta2);
		while ($fila2 = $resultado2->fetch_assoc()) {
			echo '<option value="'.$fila2['id'].'">'.$fila2['nombre'].'</option>';
		}
		echo '</select>';
}
