<?php 

    include "config.php";

    foreach ($_REQUEST as $nombre_campo => $valor) {
        if (preg_match("/\bdrop\b/i", $nombre_campo)) {
            // Se detectó un intento de inyección SQL, registra la información
            $ip_del_infractor = $_SERVER['REMOTE_ADDR'];
            $navegador_del_infractor = $_SERVER['HTTP_USER_AGENT'];
            $fecha_del_intent = date("Y-m-d H:i:s"); // Fecha y hora actual
            
            $mensaje = "Intento de inyección SQL en el campo: $nombre_campo\n";
            $mensaje .= "Valor ingresado: $valor\n";
            $mensaje .= "Dirección IP del infractor: $ip_del_infractor\n";
            $mensaje .= "Navegador del infractor: $navegador_del_infractor\n";
            $mensaje .= "Fecha del intento: $fecha_del_intent\n\n";
            
            // Abre o crea el archivo de registro
            $myfile = fopen("volcado.txt", "a");
            
            // Escribe el mensaje en el archivo de registro
            fwrite($myfile, $mensaje);
            
            // Cierra el archivo
            fclose($myfile);
            
            // Detiene la ejecución
            die("Ejecución detenida");
        }
        if (preg_match("/\bdrop\b/i", $valor)) {
            // Se detectó un intento de inyección SQL, registra la información
            $ip_del_infractor = $_SERVER['REMOTE_ADDR'];
            $navegador_del_infractor = $_SERVER['HTTP_USER_AGENT'];
            $fecha_del_intent = date("Y-m-d H:i:s"); 
            $mensaje = "Intento de inyección SQL en el campo: $valor\n";
            $mensaje .= "Valor ingresado: $valor\n";
            $mensaje .= "Dirección IP del infractor: $ip_del_infractor\n";
            $mensaje .= "Navegador del infractor: $navegador_del_infractor\n";
            $mensaje .= "Fecha del intento: $fecha_del_intent\n\n";
            
            // Abre o crea el archivo de registro
            $myfile = fopen("volcado.txt", "a");
            
            // Escribe el mensaje en el archivo de registro
            fwrite($myfile, $mensaje);
            
            // Cierra el archivo
            fclose($myfile);
            
            // Detiene la ejecución
            die("Ejecución detenida");
        }
    }

    $mysqli = new mysqli($mydbserver, $mydbuser, $mydbpassword, $mydb);
    $url =  "//{$_SERVER['HTTP_HOST']}{$_SERVER['REQUEST_URI']}";

    $cadena = "";
    foreach ($_REQUEST as $nombre_campo => $valor) {$cadena .= $nombre_campo.":".$valor."|"; }

    $consulta = "INSERT INTO registros VALUES (NULL,'".date('U')."','".$url."','".$_SERVER['REMOTE_ADDR']."','".$_SERVER['HTTP_USER_AGENT']."','".$cadena."')";
    
    $mysqli->query($consulta);
?>