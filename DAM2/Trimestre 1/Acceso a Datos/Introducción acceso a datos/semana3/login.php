<?php
    session_start();
    $mysqli = new mysqli("localhost", "documentos", "documentos", "documentos");

    $consulta = "SELECT * FROM usuarios WHERE user = '".$_POST['user']."' AND password = '".$_POST['password']."'";
    $resultado = $mysqli->query($consulta);
    $pasas = false;

    while ($fila = $resultado->fetch_assoc()){
        $pasas = true;
        $_SESSION['user'] = $fila['user'];
    }

    if ($pasas == true) {
        echo "Vamos a la app";
        echo '<meta http-equiv="Refresh" content="0; url=documentos.php" />';
    } else {
        echo "No es correcto";
        echo '<meta http-equiv="Refresh" content="0; url=index.php" />';
    }
?>
