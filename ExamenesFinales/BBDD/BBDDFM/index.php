<?php

include "jvdb.php";

//Direccion al archivo: http://localhost/BBDDFM/index.php

$conexion = new JVDB("crm");
//$conexion->peticion("CREATE TABLE clientes (id,nombre,apellidos,email,telefono)");
//$conexion->peticion("CREATE TABLE simulacro2 (id,nombre,apellidos,email,telefono)");
//$conexion->peticion('INSERT INTO clientes VALUES ("2","E","moreno","correo@gmail.com","5")');
$conexion->peticion('INSERT INTO simulacro2 VALUES ("44","lalala","quesueño","yacasiterminamos","532")');
//
//$conexion->peticion("CREATE TABLE productos (id,nombreproducto,precio,dimensiones)");
//$conexion->peticion('INSERT INTO productos VALUES ("1","raton","34","3x5x5")');

/*$datos = ($conexion->peticion("SELECT * FROM clientes"));
echo '<table border="1">';
echo "<tr><td>nombre</td><td>apellidos</td><td>telefono</td><td>email</td></tr>";
for($i = 0;$i<count($datos);$i++){
    
    echo "<tr><td>".$datos[$i]['nombre']."</td><td>".$datos[$i]['apellidos']."</td><td>".$datos[$i]['telefono']."</td><td>".$datos[$i]['email']."</td></tr>";
}
echo "</table>";*/

//$datos = $conexion->peticion("DELETE * FROM clientes WHERE telefono = '3453636'");

//echo "Vamos a ver lo que queda despues de eliminar<br>";

/*AQUI HACEMOS LA PETICION, PODEMOS ORDENAR TANTO ASC COMO DESC EN CUALQUIERA DE LAS COLUMNAS, YA SEAN NUMERICAS O LEXICAS */

$datos = ($conexion->peticion("SELECT * FROM simulacro2 ORDER BY email ASC"));
echo '<table border="1">';
echo "<tr><td>nombre</td><td>apellidos</td><td>telefono</td><td>email</td></tr>";
for($i = 0;$i<count($datos);$i++){
    
    echo "<tr><td>".$datos[$i]['nombre']."</td><td>".$datos[$i]['apellidos']."</td><td>".$datos[$i]['telefono']."</td><td>".$datos[$i]['email']."</td></tr>";
}
echo "</table>";


?>