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
                if (json_decode($fila["Comment"])->deshabilitado == "false") //{echo "readonly";}
                preg_match('#\((\d+)\)#', $fila["Type"], $match);
                echo '
               maxlength = "' . $match[1] . '"
               minlength = "'.json_decode($fila["Comment"])->min.'"
               placeholder = "'.json_decode($fila["Comment"])->placeholder.'"
               ';
               if(isset(json_decode($fila["Comment"])->parametroget)){
                    echo ' value = "'.$_GET[json_decode($fila["Comment"])->parametroget].'"';
               }

               echo '

               
               >
               </td><td>
               <div class="tipocampo"><i class="'.json_decode($fila["Comment"])->icono.'"></i></div>
              
            </div>
            <div class="clearfix"></div>
            </div>
            
        ';
        echo '
        
        <input id="boton" type="submit">';
            }
        }
        
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

        $mensaje .= "<br><p>Puedes consultar tus entregas en : </p></br>";
        $mensaje .= "<a href = 'htpps://localhost/CMS/Semana7/CRUD/informe.php?clave=".codifica($_POST['email'])."'>Aqui</a>";
        $mensaje .= "<p>Importante: No compartas este correo!!!</p>";
   ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
        $cabeceras = 'From: notreply@correo.com' . "\r\n" .
        'Reply-To: notreply@correo.com' . "\r\n" .
        'X-Mailer: PHP/' . phpversion();

        $cabeceras  = 'MIME-Version: 1.0' . "\r\n";
        $cabeceras .= 'Content-type: text/html; charset=iso-8859-1' . "\r\n";
        $mensaje = "<h1>Has enviado un form a la BBDD</h1><p>Te muestro un comprobante del formulario</p>";
        foreach ($_POST as $nombre_campo => $valor) {
            echo "recibo el campo " . $nombre_campo . " con el valor " . $valor . "<br>";
            if ($nombre_campo != 'tabla' && $nombre_campo != 'clave') {
                $mensaje .= "".ucfirst($nombre_campo).": <b>".$valor."</b><br>";
              

        }
        
        mail(
         $_POST['email'],
         "Asunto del mensaje",
         "Cuerpo del mensaje",
         $cabeceras
    
        );
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

        $mysqli = new mysqli($mydbserver, $mydbuser, $mydbpassword, $mydb);
        $consulta = "INSERT INTO " . $_POST['tabla'] . "(Identificador" . $listadocolumnas . ") VALUES (NULL" . $listadovalores . ")";
        echo $consulta;
        $mysqli->query($consulta);
        include "registro.php";

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

    function leer($tabla){
        include "config.php";
        //echo "Esto es la tabla ".$tabla;
        $mysqli = new mysqli($mydbserver, $mydbuser, $mydbpassword, $mydb);
        $consulta = "SHOW FULL COLUMNS FROM " . $tabla;

        $resultado = $mysqli->query($consulta);
        echo '<table>';
        echo '<tr>';

        $contadorcolumna = 0;

        while ($fila = $resultado->fetch_assoc()) {
            echo '<th>'.$fila["Field"].'</th>';  
            $nombrecolumna[$contadorcolumna] = $fila["Field"];
            $contadorcolumna++;   
        }
        echo '<th>Operaciones</th>';
        echo '</tr>';
        $consulta = "SELECT * FROM " . $tabla;
        $resultado = $mysqli->query($consulta);
        
        while ($fila = $resultado->fetch_assoc()) {
            echo '<tr>';
            $contadorcolumna = 0;
            foreach ($fila as $nombre_campo => $valor) {
                echo'<td  class = "'.$nombrecolumna[$contadorcolumna].' ';
                if(filter_var($valor, FILTER_VALIDATE_URL)){echo "urlsi";}
                echo '">';
                if(filter_var($valor, FILTER_VALIDATE_URL)){echo "<a href='".$valor."'>";}
                if(filter_var($valor, FILTER_VALIDATE_EMAIL)){echo "<a href='mailto:".$valor."'>";}
                echo $valor;
                if(filter_var($valor, FILTER_VALIDATE_EMAIL)){echo "</a>";}
                if(filter_var($valor, FILTER_VALIDATE_URL)){echo "</a>";}
                echo '</td>';
                $contadorcolumna++;
            }
            echo '<td>';
            echo '<a href="?tabla='.$_GET['tabla'].'&update='.$fila['Identificador'].'"><i class="fa-regular fa-square-minus"></i></a>';
            echo '<a href="?tabla='.$_GET['tabla'].'&delete='.$fila['Identificador'].'"><i class="fa-solid fa-trash"></i></a>';
            echo '</td>';

            echo '</tr>';
            
        }
        
        echo '</table>';
        echo'<a href="?create='.$_GET['tabla'].'" id="create"><i class="fa-solid fa-circle-plus"></i></a>';
    }
    function insertar($tabla)
    {
        include "config.php";
        
        echo '<form action="?tabla='.$tabla.' " method="POST">';
        echo '<input type="hidden" name="clave" value="procesainsertar">';
        echo '<input type="hidden" name="tabla" value="' . $tabla . '">';
    
        $mysqli = new mysqli($mydbserver, $mydbuser, $mydbpassword, $mydb);
        $consulta = "SHOW FULL COLUMNS FROM " . $tabla;
        $resultado = $mysqli->query($consulta);
    
        while ($fila = $resultado->fetch_assoc()) {
            $commentData = json_decode($fila["Comment"]);
    
            if ($commentData !== null && property_exists($commentData, 'visible') && $commentData->visible == "true") {
                preg_match('#\((\d+)\)#', $fila["Type"], $match);
    
                echo '
                <div class="contienecampo">
                    <div class="campo">
                        <h3>' . (property_exists($commentData, 'titulo') ? $commentData->titulo : '') . '</h3>
                        <p>' . (property_exists($commentData, 'descripcion') ? $commentData->descripcion : '') . '</p>';
    
                if ($fila["Null"] == "NO") {
                    echo "<h5>* Este campo es requerido </h5> ";
                } 
    
                echo '
                    <h6>Minimo num de caracteres: ' . (property_exists($commentData, 'min') ? $commentData->min : '') . '</h6>
                    <h6>Maximo num de caracteres:' . $match[1] . '</h6>
    
                    <input type="' . (property_exists($commentData, 'tipodato') ? $commentData->tipodato : 'text') . '" name="' . $fila["Field"] . '" id="' . $fila["Field"] . '"';
    
                if ($fila["Null"] == "NO") {
                    echo " required";
                }
    
                if (property_exists($commentData, 'deshabilitado') && $commentData->deshabilitado == "false") {
                    //echo " readonly";
                }
    
                preg_match('#\((\d+)\)#', $fila["Type"], $match);
    
                echo '
                    maxlength="' . $match[1] . '"
                    minlength="' . (property_exists($commentData, 'min') ? $commentData->min : '') . '"
                    placeholder="' . (property_exists($commentData, 'placeholder') ? $commentData->placeholder : '') . '"';
    
                if (isset($commentData->parametroget) && isset($_GET[$commentData->parametroget])) {
                    echo ' value="' . $_GET[$commentData->parametroget] . '"';
                }
    
                echo '>
                    </td><td>
                    <div class="tipocampo"><i class="' . (property_exists($commentData, 'icono') ? $commentData->icono : '') . '"></i></div>
                    </div>
                    <div class="clearfix"></div>
                </div>';
            }
        }
    
        echo '<input type="submit">';
        $mysqli->close();
    }
    function procesainsertar()
    {
        include "config.php";
    
        $listadocolumnas = "";
        $listadovalores = "";
    
        foreach ($_POST as $nombre_campo => $valor) {
            if ($nombre_campo != 'tabla' && $nombre_campo != 'clave') {
                $listadocolumnas .= "," . $nombre_campo . "";
                $listadovalores .= ",'" . $valor . "'";
            }
        }
    
        $mysqli = new mysqli($mydbserver, $mydbuser, $mydbpassword, $mydb);
        //$lista_columnas = substr($listadocolumnas, 1); // Elimina la coma inicial
        //$lista_valores = substr($listadovalores, 1); // Elimina la coma inicial
    
        //$consulta = "INSERT INTO " . $_POST['tabla'] . "(Identificador".$listadocolumnas.") VALUES (NULL" . $listadovalores . ")";
        $consulta = "INSERT INTO " . $_POST['tabla'] . "(Identificador" . $listadocolumnas . ") VALUES (NULL" . $listadovalores . ")";

        echo $consulta;
        $mysqli->query($consulta);
        include "registro.php";
    }
    
    function delete($tabla,$identificador)
    {
         
        include "config.php";


        $mysqli = new mysqli($mydbserver, $mydbuser, $mydbpassword, $mydb);
        $consulta = "DELETE FROM ".$tabla." WHERE Identificador = ".$identificador." ";
        //echo $consulta;
        $mysqli->query($consulta);
        include "registro.php";


    }
    function update($tabla,$identificador)
    {
        include "config.php";
        
        echo '<form action="?tabla='.$tabla.' " method="POST">';
        echo '<input type="hidden" name="clave" value="procesaupdate">';
        echo '<input type="hidden" name="tabla" value="' . $tabla . '">';
        echo '<input type="hidden" name="Identificador" value="' . $identificador . '">';
    
        $mysqli = new mysqli($mydbserver, $mydbuser, $mydbpassword, $mydb);
        $consulta = "SHOW FULL COLUMNS FROM " . $tabla;
        $resultado = $mysqli->query($consulta);
    
        while ($fila = $resultado->fetch_assoc()) {
            $commentData = json_decode($fila["Comment"]);
    
            if ($commentData !== null && property_exists($commentData, 'visible') && $commentData->visible == "true") {
                preg_match('#\((\d+)\)#', $fila["Type"], $match);
    
                echo '
                <div class="contienecampo">
                    <div class="campo">
                        <h3>' . (property_exists($commentData, 'titulo') ? $commentData->titulo : '') . '</h3>
                        <p>' . (property_exists($commentData, 'descripcion') ? $commentData->descripcion : '') . '</p>';
    
                if ($fila["Null"] == "NO") {
                    echo "<h5>* Este campo es requerido </h5> ";
                } 
    
                echo '
                    <h6>Minimo num de caracteres: ' . (property_exists($commentData, 'min') ? $commentData->min : '') . '</h6>
                    <h6>Maximo num de caracteres:' . $match[1] . '</h6>
    
                    <input type="' . (property_exists($commentData, 'tipodato') ? $commentData->tipodato : 'text') . '" name="' . $fila["Field"] . '" id="' . $fila["Field"] . '"';
    
                if ($fila["Null"] == "NO") {
                    echo " required";
                }
    
                if (property_exists($commentData, 'deshabilitado') && $commentData->deshabilitado == "false") {
                    //echo " readonly";
                }
    
                preg_match('#\((\d+)\)#', $fila["Type"], $match);
    
                echo '
                    maxlength="' . $match[1] . '"
                    minlength="' . (property_exists($commentData, 'min') ? $commentData->min : '') . '"
                    placeholder="' . (property_exists($commentData, 'placeholder') ? $commentData->placeholder : '') . '"';
    
                //Quiero el valor
                $consulta2 = "SELECT * FROM ". $tabla. " WHERE Identificador = ".$identificador."";
                $resultado2 = $mysqli->query($consulta2);
                while ($fila2 = $resultado2->fetch_assoc()) {
                    echo 'value = "'.$fila2[$fila["Field"]].'"';
                }
                //Quiero el valor

                echo '>
                    </td><td>
                    <div class="tipocampo"><i class="' . (property_exists($commentData, 'icono') ? $commentData->icono : '') . '"></i></div>
                    </div>
                    <div class="clearfix"></div>
                </div>';
            }
        }
    
        echo '<input type="submit">';
        $mysqli->close();
    }
    function procesaupdate($tabla,$identificador)
    {
         
        include "config.php";

        $listadocolumnas = "";
        $listadovalores = "";

        $cadena = "";

        foreach ($_POST as $nombre_campo => $valor) {
            //echo "recibo el campo " . $nombre_campo . " con el valor " . $valor . "<br>";
            if ($nombre_campo != 'tabla' && $nombre_campo != 'clave') {
                $cadena .= $nombre_campo."='".$valor."',";
            }
        }
        $cadena = substr($cadena, 0, -1);

        
        $mysqli = new mysqli($mydbserver, $mydbuser, $mydbpassword, $mydb);
        //$consulta = "INSERT INTO " . $_POST['tabla'] . "(Identificador" . $listadocolumnas . ") VALUES (NULL" . $listadovalores . ")";
        $consulta = "UPDATE ".$tabla." SET ".$cadena." WHERE Identificador = ".$identificador." " ;
        //$consulta = "DELETE FROM ".$tabla." WHERE Identificador = ".$Identificador." ";
        echo $consulta;
        
        $mysqli->query($consulta);
        include "registro.php";


    }

}
    

?>

