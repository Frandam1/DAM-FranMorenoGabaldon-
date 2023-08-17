<?php

     
    // Conectamos a la base de datos
    $conexion = mysqli_connect("localhost", "root", "", "proyectonavidad");

    // Recogemos los datos de la donación
    $nombre = $_POST["nombre"];
    $apellidos = $_POST["apellidos"];
    $email = $_POST["email"];
    $telefono = $_POST["telefono"];
    $cantidad = $_POST["cantidad"];

    // Preparamos la consulta SQL para insertar los datos de la donación
    $consulta = "INSERT INTO donaciones (nombre, apellidos, email, telefono, cantidad) VALUES ('$nombre', '$apellidos', '$email','$telefono','$cantidad')";

    // Ejecutamos la consulta
    mysqli_query($conexion, $consulta);

    
    

    // Cerramos la conexión a la base de datos
    mysqli_close($conexion);

    echo '<div class="thanks">¡Gracias por tu generosa donación! Tu apoyo es muy valioso para nosotros.</div>';

?>
    
<button id="botonvolverdonar" href="donar.html"type="submit">Volver</button>

<script>
    var button = document.getElementById("botonvolverdonar");
    button.addEventListener("click", function() {
    window.location.assign("http://localhost/Finalnavidad/donar.html");
    });
</script>























