<?php session_start(); 
include "../config.php";
include "../controlador.php";
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
    <style>
        body,html{background: rgb(220,220,220);font-family:Verdana, Geneva, Tahoma, sans-serif;padding: 0px;margin: 0px;height: 100%;}

        #formulariologin{width: 200px;height: 200px;background: white;padding: 30px;margin: auto;border-radius:20px;text-align: center;}
        #formulariologin input{width: 100%;padding-top: 10px;padding-bottom:10px;border: 0px;margin-top:10px;outline:none;background: rgb(240,240,240);}
        #formulariologin input[type="text"],#formulariologin input[type="password"]{box-shadow: 0px 4px 8px rgba(0,0,0,0.3) inset;}
        #formulariologin input[type="submit"]{box-shadow: 0px 4px 8px rgba(0,0,0,0.3);}
        .notice{position: absolute;top:0px;width:400px;background: salmon;color: white;height: 20px;left: 50%;margin-left:-200px;padding:10px;text-align: center;}
        aside{width:20%;float:left; height: 100%;box-shadow: -20px 0px 20px rgba(0,0,0,0.3)inset;}


        section{width:80%;float:right;height: 100%;}
        #contienemenu:{padding:10px;}
        #contienemenu ul{list-style-type: none;padding: 0px;margin: 0px;}
        #contienemenu ul li{padding: 10px;margin: 0px;border-bottom: 1px solid grey;}
        #contienemenu ul li a{color:inherit;text-decoration: none;}
        #contienecontenido{padding: 10px;}
        #contienecontenido table{width: 100%; text-align: left;}
        #contienecontenido table a{padding: 5px;color:inherit;text-decoration: none;}
        #contienecontenido table a i{font-size: 25px;}
        #create{color:inherit;text-decoration: none;font-size:100px;position: absolute;bottom: 10px;right:10px;}



    </style>
</head>
<body>
    <?php
        if(isset($_POST['usuario'])){
          
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
                    if(isset($_GET['tabla'])){$miformulario->leer($_GET['tabla']);}
                    if(isset($_GET['create'])){$miformulario->insertar($_GET['create']);}

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
</body>
</html>