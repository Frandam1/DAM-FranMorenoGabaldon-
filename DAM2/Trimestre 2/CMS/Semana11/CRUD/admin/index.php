<?php session_start(); 
include "../config.php";
include "../controlador.php";
include "inc/condicionesdeinicio.php";

$mysqli = new mysqli($mydbserver, $mydbuser, $mydbpassword, $mydb);
$miformulario = new Supercontrolador();
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>PanelControl</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
    <link rel="stylesheet" href="estilo/estilo.css">
    <script src="lib/jquery-3.7.1.min.js"></script>
    <script src="js/codigo.js"></script>
    <style>
    </style>
</head>
<body>
    <?php
    if(isset($_GET['pagina'])){
        switch($_GET['pagina']){
            case "anterior": 
                if($_SESSION['pagina'] > 0){
                    $_SESSION['pagina']--;}
                break;
            case "siguiente":
                $_SESSION['pagina']++; 
                break;
            case "primera":
                $_SESSION['pagina'] = 0; 
                break;
        }
    };
        if(isset($_POST['usuario']) && !isset($_SESSION['usuario'])){
          
          include "../config.php";
          $mysqli = new mysqli($mydbserver, $mydbuser, $mydbpassword, $mydb);
          $consulta = "SELECT * FROM usuarios WHERE usuario = '".$_POST['usuario']."' AND contrasena = '".$_POST['contrasena']."'";
          $resultado = $mysqli->query($consulta);
          $pasas = "no";
          while ($fila = $resultado->fetch_assoc()) { 
            $pasas = "si";
            $_SESSION['usuario'] = $fila['usuario'];
        }
        if($pasas == "si"){}else{
            echo'<div class="notice">Denegado</div>';
        }
    }
    ?>
    <?php
        if(isset($_SESSION['usuario'])){
            //panel
            echo'
                <aside>
                    <div id="contienemenu"><ul>';
                    $consulta = "SHOW TABLES";
                    $resultado = $mysqli->query($consulta);

                    while ($fila = $resultado->fetch_array()) { 
                        echo '<li><a href="?tabla='.$fila[0].'">'.$fila[0].'</a></li>';
                    }

                    echo'</ul>
                    </div>
                </aside>
                <section>
                    <div id="contienecontenido">
                    ';
                    if(isset($_GET['update'])){$miformulario->update($_GET['tabla'],$_GET['update']);}
                    if(isset($_GET['delete'])){$miformulario->delete($_GET['tabla'],$_GET['delete']);}
                    if (isset($_POST['clave']) == "procesaupdate") {$miformulario->procesaupdate($_POST['tabla'],$_POST['Identificador']);}
                    if (isset($_POST['clave']) == "procesainsertar") {$miformulario->procesainsertar();}
                    
                   
                    if(isset($_GET['tabla'])){$miformulario->leer($_GET['tabla']);}
                    if(isset($_GET['create'])){echo 'div id="formulario">';$miformulario->insertar($_GET['create']);echo'</div>';}
                    
                    
                    

                    echo '
                    
                    </div>
                
                
                </section>
            ';
        }else{
            echo'
                <form action="?" method="POST" id="formulariologin">
                    <img src="https://jocarsa.com/favicon.ico">
                    <input type="text" name="usuario" placeholder="usuario">
                    <input type="password" name="contrasena" placeholder="contrasena">
                    <input type="submit">
                
                </form>
            ';
        }
    
    ?>
    <div id = "ajax"></div>
</body>
</html>