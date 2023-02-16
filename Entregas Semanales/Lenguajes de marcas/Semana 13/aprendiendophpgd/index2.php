<?php
header("Content-type: image/png");
// Create a 55x30 image
$im = imagecreatetruecolor(512, 512);
$blanco = imagecolorallocate($im, 255, 255, 255);
$rojo = imagecolorallocate($im, 255, 0, 0);
// Draw a white rectangle
imagefilledrectangle($im, 4, 4, 512, 512, $blanco);
for($i = 0;$i<1000;$i++){
    $x = rand(0,512);
    $y = rand(0,512);
    imagefilledrectangle($im, $x, $y, $x + 50, $y + 50, imagecolorallocate($im, round(rand(0,255)),
    round(rand(0,255)),round(rand(0,255))));
}
// Save the image
imagepng($im);
//imagepng($im, 'imagefilledrectangle.png');
imagedestroy($im);
?>