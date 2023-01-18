<!DOCTYPE html>
<html lang="es">
    <head>
        <title>Adopta perrete</title>
        <meta charset="UTF-8" name="viewport" content="with=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
        <link href='fuente/Chicago.otf' rel='stylesheet'>
        <link rel="stylesheet" href="estilo.css">
        
        
    <style>
      .card {
            text-decoration: none;
              width: 250px;
              height: 320px;
              box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
              transition: 0.3s;
              border-radius: 10px;
              overflow: hidden;
              background: linear-gradient(to left, #37A7A3, #683CBF);
              border: 2px solid white;
                position: relative;
                margin-right: 10px;
                margin-top: 15px;
                
            }

            .card-image {
              width: 100%;
              height: 60%;
              background-size: cover;
              background-position: center;
                
            }

            .card-content {
              width: 100%;
              height: 40%;
              display: flex;
              align-items: flex-end;
            }

            .card-left, .card-center, .card-right {
              width: 33.33%;
              padding: 10px;
              box-sizing: border-box;
              text-align: center;
                color: black;
            }
            .card-text{
                color: black;
                text-transform: uppercase;
                font-weight: bold;
                text-align: center;
            }
            a{
            text-decoration: none;
                color: black;
        }
            p{
                color: black;
                
            }
            .cards-container{
                height: 80%;
                width: 100%;
                display: flex;
                margin-top:35px;
                margin-left: -10px;
                
            }
            .h1carro{
                color: aliceblue;
            }
        
    </style>    
        
    </head>
    
    <body>
        <div class="header">
            
            <div class="top-nav">
                    <ul>
                        <li><a href="http://localhost/Finalnavidad/index.html">Inicio</a></li>
                        <li><a href="http://localhost/Finalnavidad/adopta.html">Adopta</a></li>
                        <li><a href="http://localhost/Finalnavidad/donar.html">Colabora</a></li>
                        <li><a href="http://localhost/Finalnavidad/carrito.html">Merchand</a></li>
                        <li><a href="http://localhost/Finalnavidad/normas.html">Recursos</a></li>
                    </ul>
                <button>Registrate!</button>
            </div>
            <div class="side-nav">
                <img src="img/logogitpet.png" class="logo">
                <a href="###">INICIO</a>
            </div>  
            <h1 class="h1carro">Nuestros perretes</h1>
            <div class="barra-izquierda"></div>
            <div class="barra-abajo">
                
            </div>
            
        
                <div class="cards-container">
                    <!-- Recorremos cada fila de la consulta con un ciclo PHP -->
                    <?php 

                    $conn = mysqli_connect('localhost', 'root', '', 'proyectonavidad');
                    $query = "SELECT * FROM perretess";
                    $result = mysqli_query($conn, $query);


                    while ($row = mysqli_fetch_array($result)) { ?>
                    <!-- Creamos la tarjeta utilizando la clase card de Bootstrap -->
                    <div class="card mb-4">
                    <a href="index.html"></a>
                    <!-- Mostramos la imagen de fondo utilizando la clase card-img-top -->
                    <img href="index.html" src="images/products/<?php echo $row['image']; ?>" class="card-img-top">
                        
                        <div class="card-body">
                        <!-- Agregamos el contenido de cada fila de la consulta -->
                        <p class="card-text"><?php echo $row['nombre']; ?></p>
                        <p class="card-text"><?php echo $row['raza']; ?></p>
                        <p class="card-text"><?php echo $row['edad']; ?></p>
                        <!-- línea de PHP que se utiliza para mostrar un enlace HTML en una página web. La línea de código está imprimiendo un enlace dentro de una etiqueta de párrafo con la clase "card-text". La dirección del enlace se almacena en una variable de matriz llamada "enlace" y se recupera utilizando $row ['enlace'] -->
                        <p class="card-text"><?php echo '<a href="'.$row['enlace'].'">INFO</a>'; ?></p>



                        <!-- PRUEBA DE CARGAR ENLACES POR ID-->
                        <?php /*echo "<a href='http://localhost/Finalnavidad/perros_adopcion/index.html?id=".$row['id']."'>Información</a>"; ?>
                        <?php if($row['id'] == 1){
                        header("Location:http://localhost/Finalnavidad/donar.html");

                        }else{
                        header("Location:http://localhost/Finalnavidad/perros_adopcion/index.html");
                        }  
                        */?>

                        </div>

                    </div>
                    <?php } ?>
                </div>
        </div>
        
    </body>
    
</html>