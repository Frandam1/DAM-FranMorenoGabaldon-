<?php 
// Archivo conexion
require_once 'dbConnect.php'; 
 
// Clase carrito
include_once 'Cart.class.php'; 
$cart = new Cart; 
 
// Recuperar products from the database 
$sqlQ = "SELECT * FROM products"; 
$stmt = $db->prepare($sqlQ); 
$stmt->execute(); 
$result = $stmt->get_result(); 
?>

<!DOCTYPE html>
<html lang="es">
    <head>
        <title>Carrito GitPEt</title>
        <meta charset="utf-8" name="viewport" content="width=device-width, initial-scale=1.0">

        <!-- Bootstrap CSS -->
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <link rel="stylesheet" href="estilo.css">

            <!--CSS personalizado -->
            <!-- <style>

            body {
                display: flex;
                background: linear-gradient(to top left, #163878 65%, #0E9DB7);
            }
            h1{
                color: aliceblue;

            }
            .row col-lg-12{
                display: flex;
                background-color: gray;
                margin: 10px;
                padding: 10px;
                border: 1px solid black;
            }
            .card{
               background-color: whitesmoke; 
                margin: 10px;
                padding: 10px;
                border: 1px solid black;
                
            }
            nav{
                display: flex;
                justify-content: space-between;
                align-items: center;
                position: relative;
                z-index: 1;
            }
            .nav-enlaces{
                text-align: right;
                background-color: cornflowerblue;
                padding: 10px 30px;
                border-bottom-left-radius: 18px;
            }
            .nav-enlaces ul li{
                list-style: none;
                display: inline-block;
                padding: 10px 25px;
            }
            .nav-enlaces ul li a{
                color: #fff;
                text-decoration: none;
                font-size: 18px;
            }
            /* Psar raton encima */ 
            nav ul li:hover{
                background: #0E75E4;
                color: beige;
                border-radius: 20px;
            }
                
            </style>-->

        <!-- Custom style -->
        <!--<link href="css/style.css" rel="stylesheet"> -->

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
                <img src="images/logogitpet.png" class="logo">
            <a href="###">INICIO</a>
            </div>  
            
            <h1 class="h1carro">Articulos GitPet</h1>

            <!-- Cesta -->
            <div class="cart-view">
                <a href="viewCart.php" title="View Cart"><i class="icart"></i> (<?php echo ($cart->total_items() > 0)?$cart->total_items().' Items':0; ?>)</a>
            </div>

            <!-- Lista de productos -->
            <div class="row col-lg-12">
            <?php 
            if($result->num_rows > 0){ 
                while($row = $result->fetch_assoc()){ 
                    $proImg = !empty($row["image"])?'images/products/'.$row["image"]:'images/demo-img.png'; 
            ?>
            <div class="cardcarro" style="width: 18rem;">
                <img src="<?php echo $proImg; ?>" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title"><?php echo $row["name"]; ?></h5>
                    <h6 class="card-subtitle mb-2 text-muted">Price: <?php echo CURRENCY_SYMBOL.$row["price"].' '.CURRENCY; ?></h6>
                    <p class="card-text"><?php echo $row["description"]; ?></p>
                    <a href="cartAction.php?action=addToCart&id=<?php echo $row["id"]; ?>" class="btn btn-primary">Añadir al carrito</a>
                </div>
            </div>
            <?php } }else{ ?>
                <p>Product(s) not found.....</p>
            <?php } ?>
            </div>
        </div>
        
    </body>
</html>