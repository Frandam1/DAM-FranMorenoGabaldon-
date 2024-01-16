<?php
define('UPLOAD_DIR', 'img/personajes/');

$image_parts = explode(";base64,", $_POST['imagen']);
$image_base64 = base64_decode($image_parts[1]);

$image_info = getimagesizefromstring($image_base64);
$image_type = image_type_to_extension($image_info[2], false);

$file = UPLOAD_DIR . uniqid() . '.' . $image_type;
file_put_contents($file, $image_base64);
?>
