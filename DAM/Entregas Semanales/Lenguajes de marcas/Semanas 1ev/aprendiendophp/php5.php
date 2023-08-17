<?php
    $edad = 42;
    if($edad < 30){
        echo "Eres joven<br>";
    }else{
        echo "Ya no eres joven<br>";
    }
    
    $dia = "fsdfsdf";
    switch($dia){
        case "lunes":echo "El pero de la semana";break;
        case "martes":echo "El segundo de la semana";break;
        case "miercoles":echo "El tercero de la semana";break;
        case "jueves":echo "El 4 de la semana";break;
        case "viernes":echo "El 5 de la semana";break;
        case "sabado":echo "El 6 de la semana";break;
        case "domingo":echo "El 7 de la semana";break;
        default: echo "no es un dia";
            
    }




?>