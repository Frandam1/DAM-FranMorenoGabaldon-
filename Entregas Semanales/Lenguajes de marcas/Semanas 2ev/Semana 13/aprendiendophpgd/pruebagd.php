<?php
// Create a 55x30 image
$im = imagecreatetruecolor(512, 512);
$blanco = imagecolorallocate($im, 255, 255, 255);
$rojo = imagecolorallocate($im, 255, 0, 0);
// Draw a white rectangle
imagefilledrectangle($im, 4, 4, 50, 50, $rojo);

// Save the image
imagepng($im, 'imagefilledrectangle.png');
imagedestroy($im);
?>