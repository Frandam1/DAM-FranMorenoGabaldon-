<?php
$enlace = mysqli_connect("localhost", "frandam", "frandam", "practica dama");
$peticion = "SELECT * FROM usuarios WHERE Identificador = ".$_GET['id']."";
$resultado = mysqli_query($enlace,$peticion);
while($fila = $resultado->fetch_assoc()) {
  echo '
            Usuario:'.$fila['nombre'].'<br>
            Contraseña: '.$fila['apellidos'].'<br>
            Nombre: '.$fila['peso'].'<br>
            Apellido: '.$fila['aficiones'].'<br>
            
  
        ';
}

?>
<a href="paneldecontrol.php">Volver</a>