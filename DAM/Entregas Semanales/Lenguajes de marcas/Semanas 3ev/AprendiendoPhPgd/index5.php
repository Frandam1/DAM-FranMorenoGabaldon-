<?php

header("Content-type: image/png");   
 move_uploaded_file($_FILES["imagen"]["tmp_name"], "miimagen.jpg");

$im = imagecreatefromjpeg('miimagen.jpg');
imagefilter($im, IMG_FILTER_GRAYSCALE);
$negro = imagecolorallocate($im, 0, 0, 0);
$negrotrans = imagecolorallocatealpha($im, 0, 0, 0, 100);
$fuente = 'arial.ttf';
for($x =0;$x<512;$x+=80){
    for($y = 0;$y<512;$y+=7){
        imagettftext($im, 10, 12, $x, $y, $negrotrans, $fuente, "hola practicando php");
        
    }
}





imagepng($im);


?>