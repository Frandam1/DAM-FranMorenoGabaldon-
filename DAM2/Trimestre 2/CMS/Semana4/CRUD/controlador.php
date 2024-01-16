<style>
    body{font-family: Verdana, Geneva, Tahoma, sans-serif;}
    .campo{margin-bottom:20px;border-bottom:1px solid grey;}
    .campo label{font-size:2em;padding:0px;margin:0px;}
    .campo p{font-size:1em;padding:0px;margin:0px;}
    
</style>

<form action="?" method="POST">

<?php 
    $mysqli = new mysqli("localhost", "supercrud", "supercrud", "supercrud");

    /* verificar la conexión */
    if ($mysqli->connect_errno) {
        printf("Conexión fallida: %s\n", $mysqli->connect_error);
        exit();
    }

    $tabla = "entregas";
    //1. Vemos la estructura
    /*
    $consulta = "DESCRIBE ".$tabla;
    $resultado = $mysqli->query($consulta);
    var_dump($resultado);
    */
    //2. Vemos las coluimnas
  
    $consulta = "SHOW FULL COLUMNS FROM ".$tabla;
    $resultado = $mysqli->query($consulta);
    while ($fila = $resultado->fetch_assoc()){
        /*  
        echo "La columna es: ".$fila["Field"];
        echo"<br>";
        echo "El tipo de columna es: ".$fila["Type"];
        echo"<br>";
        echo "La columna es una clave? : ".$fila["Key"];
        echo"<br>";
        echo "La columna es nuleable= : ".$fila["Null"];
        echo"<br>";
        echo "El comentario de la columna es  : ".$fila["Comment"];
        echo"<br>";

        */
        if($fila["Key"] == NULL){
        echo '
            <div class="campo">
                <label for ="'.$fila["Field"].'">'.$fila["Field"].'</label>
               <p>'.$fila["Comment"].'</p> 
               <input type="';
                if(strpos($fila["Type"],"varchar") !== false){
                    echo 'text';
                }else if(strpos($fila["Type"],"int")!== false){
                    echo 'number';
                }

               echo '
               " name="'.$fila["Field"].'" id="'.$fila["Field"].'"
               ';
               if($fila["Null"] == "NO"){echo " required ";}
               preg_match('#\((\d+)\)#', $fila["Type"], $match);
               echo '
               max = "'.$match[1].'"
               >
            </div>
        ';
    }
}
    $mysqli->close();
    
?>
<input type="submit">
</form>