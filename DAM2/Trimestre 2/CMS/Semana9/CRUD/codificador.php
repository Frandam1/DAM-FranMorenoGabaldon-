<?php

function subecaracter($cadena){
    for ($i=0;$i<strlen($cadena);$i++){
        $cadena[$i] = chr(ord($cadena[$i])+1);
    }
    return $cadena;
}

function bajacaracter($cadena){
    for ($i=0;$i<strlen($cadena);$i++){
        $cadena[$i] = chr(ord($cadena[$i])-1);
    }
    return $cadena;
}

function codifica($cadena){
    $codificado = base64_encode(subecaracter(base64_encode(subecaracter(base64_encode(base64_encode(base64_encode($cadena)))))));
    return $codificado;
}

function descodifica($cadena){
    $descodificado = base64_decode(bajacaracter(base64_decode(bajacaracter(base64_decode(base64_encode(base64_decode($cadena)))))));
    return $descodificado;
}

/*
$original = "franciscomoreno";
echo "El original es : ".$original;
echo '<br>';
$codificado = codifica("franciscomoreno");
echo "El codificado es ".$codificado;
$descodificado = descodifica($codificado);
echo '<br>';
echo 'el descodificado es '.$descodificado;

*/
?>

