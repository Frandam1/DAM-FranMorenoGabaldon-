<?php
    
    $o1 = 4;
    $o2 = 3;
    $o3 = "3";

    echo "la suma de los operadores es ".($o1+$o2)."<br>";
    echo "la resta de los operadores es ".($o1-$o2)."<br>";
    echo "la multiplicaion de los operadores es ".($o1*$o2)."<br>";
    echo "la division de los operadores es ".($o1/$o2)."<br>";
    echo "el resto de los operadores es ".($o1%$o2)."<br>";
    
    echo "es cierto que los dos op son iguales".($o2 == $o3)."<br>";
    echo "es cierto que los dos op son exactamente iguales".($o2 === $o3)."<br>";
    echo "es cierto que no son iguales".($o2 != $o3)."<br>";

    $dia = "miercoles";
    $mes = "agosto";

    echo "Es cierto que las dos son ciertas ".($dia =="miercoles" && $mes == "agosto")."<br>";
    echo "Es cierto que las dos son ciertas ".($dia =="miercoles" && $mes == "octubre")."<br>";
    echo "Es cierto que alguna de las dos son ciertas ".($dia =="miercoles" || $mes == "mayo")."<br>";
    echo "Es cierto que las dos son ciertas ".($dia =="martes" && $mes == "mayo")."<br>";

?>