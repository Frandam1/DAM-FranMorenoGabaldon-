<?php

include "jvdb.php";

$conexion = new JVDB("crm");
$conexion->peticion("CREATE TABLE clientes (id,nombre,apellidos,email,telefono)");
$conexion->peticion('INSERT INTO clientes VALUES ("1","fran","moreno","correo@gmail.com","3453636")');
//
//$conexion->peticion("CREATE TABLE productos (id,nombreproducto,precio,dimensiones)");
//$conexion->peticion('INSERT INTO productos VALUES ("1","raton","34","3x5x5")');

$datos = ($conexion->peticion("SELECT * FROM clientes"));
echo '<table border="1">';
echo "<tr><td>nombre</td><td>apellidos</td><td>telefono</td><td>email</td></tr>";
for($i = 0;$i<count($datos);$i++){
    
    echo "<tr><td>".$datos[$i]['nombre']."</td><td>".$datos[$i]['apellidos']."</td><td>".$datos[$i]['telefono']."</td><td>".$datos[$i]['email']."</td></tr>";
}
echo "</table>";

    $datos = $conexion->peticion("DELETE * FROM clientes WHERE apellidos = 'moreno'");

echo "Vamos a ver lo que queda despues de eliminar<br>";

$datos = ($conexion->peticion("SELECT * FROM clientes"));
echo '<table border="1">';
echo "<tr><td>nombre</td><td>apellidos</td><td>telefono</td><td>email</td></tr>";
for($i = 0;$i<count($datos);$i++){
    
    echo "<tr><td>".$datos[$i]['nombre']."</td><td>".$datos[$i]['apellidos']."</td><td>".$datos[$i]['telefono']."</td><td>".$datos[$i]['email']."</td></tr>";
}
echo "</table>";


?>