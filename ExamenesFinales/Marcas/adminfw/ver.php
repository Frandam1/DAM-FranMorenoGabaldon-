<?php
$enlace = mysqli_connect("localhost", "root", "", "examen3");

if(isset($_GET['id']) && is_numeric($_GET['id'])){
    
    $id = $_GET['id'];
    $peticion = "SELECT * FROM personas WHERE Identificador = ".$id;
    $resultado = mysqli_query($enlace,$peticion);
    
    if(mysqli_num_rows($resultado) > 0) {
        while($fila = $resultado->fetch_assoc()) {
            echo '
                Usuario:'.$fila['nombre'].'<br>
                Contraseña: '.$fila['apellidos'].'<br>
                Nombre: '.$fila['peso'].'<br>
                Apellido: '.$fila['aficiones'].'<br>
            ';
        }
    } else {
        echo "No se encontró ninguna persona con el id ".$id;
    }
} else {
    echo "Error: el id no es un número válido.";
}


?>
<a href="escritorio.php">Volver</a>