<?php 

    $mydbuser = "supercrud";
    $mydbpassword = "supercrud";
    $mydb = "supercrud";
    $mydbserver = "localhost";

    echo "Hola";
    $mysqli = new mysqli($mydbserver, $mydbuser, $mydbpassword, $mydb);
    echo "Hola";
    $consulta = "UPDATE " . $_GET['tabla'] . " SET " . $_GET['columna'] . "='" . $_GET['valor'] . "' WHERE Identificador = " . $_GET['Identificador'];
    echo $consulta;
    echo "Hola";



    $resultado = $mysqli->query($consulta);

?>