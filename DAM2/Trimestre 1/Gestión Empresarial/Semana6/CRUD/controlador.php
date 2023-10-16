<?php
class Supercontrolador
{

    function formulario($tabla)
    {
        include "config.php";
        
        echo '<form action="?" method="POST">';
        /*echo '<img class="logo" src="img/logorandom.png">';*/
        echo '<input type="hidden" name="clave" value="procesaformulario">';
        echo '<input type="hidden" name="tabla" value="' . $tabla . '">';

        $mysqli = new mysqli($mydbserver, $mydbuser, $mydbpassword, $mydb);
        $consulta = "SHOW FULL COLUMNS FROM " . $tabla;
        $resultado = $mysqli->query($consulta);
        while ($fila = $resultado->fetch_assoc()) {

            if (json_decode($fila["Comment"])->visible == "true") {
                preg_match('#\((\d+)\)#', $fila["Type"], $match);
                echo '
            <div class="contienecampo">
            
            <div class="campo">
                <h3>'.json_decode($fila["Comment"])->titulo.'</h3>
                <p>'.json_decode($fila["Comment"])->descripcion.'</p>';
                if($fila["Null"] == "NO"){echo "<h5>* Este campo es requerido </h5> ";} 
                

               echo '
               <h6>Minimo num de caracteres: '.json_decode($fila["Comment"])->min.'</h6>
               <h6>Maximo num de caracteres:'.$match[1].'</h6>

               <input type="'.json_decode($fila["Comment"])->tipodato.'" name="' . $fila["Field"] . '" id="' . $fila["Field"] . '"
               ';
                if ($fila["Null"] == "NO") {echo " required";}
                if (json_decode($fila["Comment"])->deshabilitado == "false") {echo "disabled";}
                preg_match('#\((\d+)\)#', $fila["Type"], $match);
                echo '
               maxlenght = "' . $match[1] . '"
               placeholder = "'.json_decode($fila["Comment"])->placeholder.'"
               >
               </td><td>
               <div class="tipocampo"><i class="'.json_decode($fila["Comment"])->icono.'"></i></div>
              
            </div>
            <div class="clearfix"></div>
            </div>
        ';
            }
        }
        echo '<input id="boton" type="submit">';
        $mysqli->close();
    }
    function procesaformulario()
    {
         //Revision antes de introsducir la informacion
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
        include "config.php";

        $listadocolumnas = "";
        $listadovalores = "";
        foreach ($_POST as $nombre_campo => $valor) {
            echo "recibo el campo " . $nombre_campo . " con el valor " . $valor . "<br>";
            if ($nombre_campo != 'tabla' && $nombre_campo != 'clave') {
                $listadocolumnas .= "," . $nombre_campo . "";
                $listadovalores .= ",'" . $valor . "'";
            }

        }
        $mysqli = new mysqli($mydbserver, $mydbuser, $mydbpassword, $mydb);
        $consulta = "INSERT INTO " . $_POST['tabla'] . "(Identificador" . $listadocolumnas . ") VALUES (NULL" . $listadovalores . ")";
        echo $consulta;
        $mysqli->query($consulta);

        echo '
        <div class="notice">
            <h1>Registro correcto</h1>
            <p>Tu registro está OK, te redirijo en 5 segundos</p>
        </div> 
        
        ';
        echo '
            <meta http-equiv="refresh" content="2; url=?" />
        ';
    }


    /*

    */
}

?>

