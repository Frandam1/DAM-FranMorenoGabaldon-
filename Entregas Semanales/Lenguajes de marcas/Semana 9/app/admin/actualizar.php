<form action="procesaactualizar.php" method="POST">

<?php
$enlace = mysqli_connect("localhost", "frandam", "frandam", "practica dama");
$peticion = "SELECT * FROM usuarios WHERE Identificador = ".$_GET['id']."";
$resultado = mysqli_query($enlace,$peticion);
while($fila = $resultado->fetch_assoc()) {
  echo '
            <input type="hidden" name="Identificador" value="'.$fila['Identificador'].'">
            Nombre:<input type="text" name="nombre" value="'.$fila['nombre'].'"><br>
            Apellidos:<input type="text" name="apellidos" value="'.$fila['apellidos'].'"> <br>
            Peso:<input type="text" name="peso" value="'.$fila['peso'].'"> <br>
            Aficiones:<input type="text" name="aficiones" value=" '.$fila['aficiones'].'"><br>
            <input type="submit">
  
        ';
}

?>
</form>
<a href="paneldecontrol.php">Volver</a>