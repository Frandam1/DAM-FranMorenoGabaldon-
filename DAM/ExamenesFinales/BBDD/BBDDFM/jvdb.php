<?php

    class JVDB{
        
        public function __construct($basededatos){
            $this->db = $basededatos;
            echo "La BBDD es : ".$this->db."<br>";
        
        }
        public function peticion($consulta){
            echo "Vamos a procesar : ".$consulta."<br>";
            
            $primerapalabra = explode(" ",$consulta)[0];
            $segundapalabra = explode(" ",$consulta)[1];
            $tercerapalabra = explode(" ",$consulta)[2];
            
            echo "la primera palabra es:
            ".$primerapalabra."<br>";
            switch($primerapalabra){
                case "CREATE":
                    echo "Voy a crear algo<br>";
                    if($segundapalabra == "TABLE"){
                        $myfile = fopen("db/".$this->db."/".$tercerapalabra.".csv", "a") or die("Unable to open file!");
                        $text = $consulta;
                        preg_match('#\((.*?)\)#', $text, $match);
                        print $match[1];
                        $txt = $match[1];
                        $campos = explode(",",$txt);
                        $cadenacampos = "";
                        for($i = 0; $i < count($campos); $i++) {
                            $cadenacampos .= '"' . $campos[$i] . '",';
                            
                        }
                        $recortado = substr($cadenacampos, 0, -1);
                        fwrite($myfile, $recortado."\n");
                        
                        fclose($myfile);
                        
                    }
                    break;
                case "INSERT":
                    $tabla = explode(" ",$consulta)[2];
                    $myfile = fopen("db/".$this->db."/".$tabla.".csv", "a") or die("Unable to open file!");
                    $text = $consulta;
                    preg_match('#\((.*?)\)#', $text, $match);
                        print $match[1];
                        $txt = $match[1];
                    fwrite($myfile, $txt."\n");
                    
                    break;
                    
                case "SELECT":
                    $piezas = explode(" ",$consulta);
                    foreach($piezas as $key => $value){
                        if($piezas[$key] == 'FROM'){
                            $tabla = $piezas[$key+1];
                            break;
                        }
                    }
                    echo "La tabla es: ".$tabla."<br>";

                    $array = [];
                    $contador = 0;
                    $file = fopen("db/".$this->db."/".$tabla.".csv", 'r');
                    $line = fgetcsv($file);
                    $nombrescampo = $line;
                    $file = fopen("db/".$this->db."/".$tabla.".csv", 'r');
                    while (($line = fgetcsv($file)) !== FALSE) {
                        $array[$contador] = $line;
                        for($i = 0;$i<count($line);$i++){
                            $array[$contador][$nombrescampo[$i]] = $line[$i];
                        }
                        $contador++;
                    }
                    fclose($file);

                    // Ordenar si hay cláusula ORDER BY
                    
                    if (preg_match('/ORDER BY (.*) (ASC|DESC)?/', $consulta, $matches)) {
                        
                        //Almacenamos el campo de ordenamiento y elorden
                        $campoOrdenamiento = $matches[1];
                        $orden = isset($matches[2]) ? $matches[2] : 'ASC'; 
                        
                        //Usamos usort para ordenar el array, con funcion anonima como argumento
                        usort($array, function($a, $b) use ($campoOrdenamiento, $orden) {
                            
                        /*Definimos la funcion anonima que usara usort. Se verifica el orden, si los campos son 
                        numericos y si no lo son se usa strnatcmp para la comparacion lexica.La función de comparación devuelve un valor negativo si $a es menor que $b, cero si son iguales y un valor positivo si $a es mayor que $b. Esto permite que usort ordene el array en función de esta función de comparación.*/
                            
                            if ($orden == 'ASC') {
                                if (is_numeric($a[$campoOrdenamiento]) && is_numeric($b[$campoOrdenamiento])) {
                                    return $a[$campoOrdenamiento] - $b[$campoOrdenamiento];
                                } else {
                                    return strnatcmp($a[$campoOrdenamiento], $b[$campoOrdenamiento]);
                                }
                            } else {
                                if (is_numeric($a[$campoOrdenamiento]) && is_numeric($b[$campoOrdenamiento])) {
                                    return $b[$campoOrdenamiento] - $a[$campoOrdenamiento];
                                } else {
                                    return strnatcmp($b[$campoOrdenamiento], $a[$campoOrdenamiento]);
                                }
                            }
                        });
                    }

                    return $array;
                    break;

                case "DELETE":
                    $piezas = explode(" ",$consulta);
                    foreach($piezas as $key => $value){
                        
                        if($piezas[$key] == 'FROM'){
                            
                            $tabla = $piezas[$key+1];
                            
                            
                            break;
                        }
                    }
                    
                    foreach($piezas as $key => $value){
                        
                        if($piezas[$key] == 'WHERE'){
                            
                            $campo = $piezas[$key+1];
                            $valor = str_replace("'","",$piezas[$key+3]);
                            
                            break;
                        }
                    }
                    echo "De la tabla ".$tabla." voy a borrar del campo ".$campo." cuyo valor sea ".$valor."<br>";
                    
                    $array = [];
                    $contador = 0;
                    $file = fopen("db/".$this->db."/".$tabla.".csv", 'r');
                    $line = fgetcsv($file);
                    $nombrescampo = $line;
                    
                    $file = fopen("db/".$this->db."/".$tabla.".csv", 'r');
                    $file2 = fopen("db/".$this->db."/".$tabla."2.csv", 'w');
                    while (($line = fgetcsv($file)) !== FALSE) {
                        $borra = "no";
                        $array[$contador] = $line;
                        for($i = 0;$i<count($line);$i++){
                            $array[$contador][$nombrescampo[$i]] = $line[$i];
                            if($nombrescampo[$i] == $campo && $line[$i] == $valor){
                                echo "He encontrado una coincidencia<br>";
                                $borra = "si";
                            }else{
                                
                            }
                        }
                      
                        
                        $contador++;
                        if($borra == "si"){
                            echo "He encontrado una coincidencia<br>";
                        }else{
                            echo "NO He encontrado una coincidencia<br>";
                            echo $line;
                            foreach($line as $a){
                             fwrite($file2,'"'.$a.'",');   
                            }
                            fwrite($file2, PHP_EOL);
                            
                        }
                    }
                    
                    fclose($file);
                    fclose($file2);
                    
                    unlink("db/".$this->db."/".$tabla.".csv");
                    rename("db/".$this->db."/".$tabla."2.csv", "db/".$this->db."/".$tabla.".csv");
                    
                    
                    break;
            }
        }
    }
    




?>