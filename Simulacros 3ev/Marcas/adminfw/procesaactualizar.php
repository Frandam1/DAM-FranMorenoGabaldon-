<?php
//var_dump($_POST);
include "../admin/conexion.php";
$contador = 0;
foreach ($_POST as $clave => $valor){
    if($contador >= 2){
    echo 'Voy a actualizar el valor del campo '.$clave.' con el valor '.$valor.'<br>';
$peticion = "
UPDATE ".$_POST['tabla']."
SET ".$clave." = '".$valor."'
WHERE Identificador = ".$_POST['id']."
";

mysqli_query($enlace,$peticion);
    }
    $contador++;
}
echo '<meta http-equiv="refresh" content="2; url=escritorio.php">';

?>