<?php
$im = @imagecreatefromjpeg("al.jpg");
$tamano = getimagesize("al.jpg");
var_dump($tamano);
echo "La imagen tiene una proporcion de ".$tamano[3]."<br>";
echo "La imagen tiene una anchura de ".imagesx($im)."<br>";
echo "La imagen tiene una anchura de ".imagesy($im)."<br>";
?>