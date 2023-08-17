<?php 
// Incluye el archivo de config
require_once 'config.php'; 
 
// Conecta la BBDD  
$db = new mysqli(DB_HOST, DB_USERNAME, DB_PASSWORD, DB_NAME);  
  
// Si falla manda error 
if ($db->connect_errno) {  
    printf("Connect failed: %s\n", $db->connect_error);  
    exit();  
}