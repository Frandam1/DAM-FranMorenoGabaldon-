<?php
/*este código PHP genera un desplegable HTML dinámico basado en los resultados de dos consultas SQL en una base de datos MySQL.*/

$mysqli = new mysqli("localhost", "formularios", "formularios", "formularios");

if ($mysqli->connect_errno) {
    printf("Conexión fallida: %s\n", $mysqli->connect_error);
    exit();
}

$consulta = "SELECT * FROM desplegable WHERE idparent = '".$_POST['idparent']."'";
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
/*$consulta = "SELECT * FROM desplegable WHERE idparent = '".$_POST['idparent']."'"; 
Esta línea define una consulta SQL para seleccionar todos los registros de la tabla desplegable donde 
el valor de la columna idparent coincide con el valor recibido mediante el método POST del formulario web.

$resultado = $mysqli->query($consulta); Esta línea ejecuta la consulta
 y guarda el resultado en la variable $resultado.

while ($fila = $resultado->fetch_assoc()) { 
Esta línea comienza un bucle while que recorre todos los registros devueltos por la consulta 
y guarda cada registro en la variable $fila.

echo '<select id="'.$fila['id'].'"><option></option>'; 
Esta línea genera un elemento de selección HTML (select) 
con un identificador único basado en el valor de la columna id del registro actual. La primera opción está vacía.

$consulta2 = "SELECT * FROM opciones WHERE iddesplegable2 = '".$fila['id']."'"; 
Esta línea define otra consulta SQL para seleccionar 
todos los registros de la tabla opciones donde el valor de la columna iddesplegable2 
coincide con el valor de la columna id del registro actual.

$resultado2 = $mysqli->query($consulta2); Esta línea ejecuta la segunda consulta 
y guarda el resultado en la variable $resultado2.

while ($fila2 = $resultado2->fetch_assoc()) { 
Esta línea comienza otro bucle while que recorre todos los registros devueltos 
por la segunda consulta y guarda cada registro en la variable $fila2.

echo '<option value="'.$fila2['id'].'">'.$fila2['nombre'].'</option>'; 
Esta línea genera una opción dentro del elemento de selección HTML con un valor basado en la columna id del registro actual
 de la tabla opciones y el texto de la opción basado en la columna nombre del mismo registro.

echo '</select>'; Esta línea cierra el elemento de selección HTML generado 
en el bucle while externo.*/