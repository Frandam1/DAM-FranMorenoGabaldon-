<?php
	define('UPLOAD_DIR', 'img/personajes/');
    $image_parts = explode(";base64,", $_POST['imagen']);
    $image_type_aux = explode("img/personajes/", $image_parts[0]);
    $image_type = $image_type_aux[1];
    $image_base64 = base64_decode($image_parts[1]);
    $file = UPLOAD_DIR . uniqid() . '.png';
    file_put_contents($file, $image_base64);
?>