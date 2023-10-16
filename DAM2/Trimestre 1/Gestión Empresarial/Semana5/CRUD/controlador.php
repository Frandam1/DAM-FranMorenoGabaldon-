<?php
class Supercontrolador
{

    function formulario($tabla)
    {
        include "config.php";
        
        echo '<form action="?" method="POST">';
        echo '<img class="logo" src="img/logorandom.png">';
        echo '<input type="hidden" name="clave" value="procesaformulario">';
        echo '<input type="hidden" name="tabla" value="' . $tabla . '">';

        $mysqli = new mysqli($mydbserver, $mydbuser, $mydbpassword, $mydb);
        $consulta = "SHOW FULL COLUMNS FROM " . $tabla;
        $resultado = $mysqli->query($consulta);
        while ($fila = $resultado->fetch_assoc()) {

            if ($fila["Key"] == NULL && $fila["Field"] != "epoch") {
                echo '

            <div class="campo">

                <p>' . $fila["Comment"] . '</p>';
                if($fila["Null"] == "NO"){echo "<h5>* Este campo es requerido </h5> ";} 
                
               echo '
               <input type="';
                if (strpos($fila["Type"], "varchar") !== false) {
                    echo 'text';
                } else if (strpos($fila["Type"], "int") !== false) {
                    echo 'number';
                }

                echo '
               " name="' . $fila["Field"] . '" id="' . $fila["Field"] . '"
               ';
                if ($fila["Null"] == "NO") {
                    echo " required";
                }
                if ($fila["Field"] == "epoch") {
                    echo "disabled";
                }
                preg_match('#\((\d+)\)#', $fila["Type"], $match);
                echo '
               maxlenght = "' . $match[1] . '"
               placeholder = "'.$fila["Field"].'"
               >
            </div>
        ';
            }
        }
        echo '<input id="boton" type="submit">';
        $mysqli->close();
    }
    function procesaformulario()
    {
        echo "Vamos a procesar";
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

