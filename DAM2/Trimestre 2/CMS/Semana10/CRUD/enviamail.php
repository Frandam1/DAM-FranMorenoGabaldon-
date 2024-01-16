<?php 

    $cabeceras = 'From: ejemplo@correo.com' . "\r\n" .
    'Reply-To: ejemplo@correo.com' . "\r\n" .
    'X-Mailer: PHP/' . phpversion();
    $cabeceras  = 'MIME-Version: 1.0' . "\r\n";
    $cabeceras .= 'Content-type: text/html; charset=iso-8859-1' . "\r\n";
    
    mail(
     "ejemplo@correo.com",
     "Asunto del mensaje",
     "Cuerpo del mensaje",
     $cabeceras

    );

?>