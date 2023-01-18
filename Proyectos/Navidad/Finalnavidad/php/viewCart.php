<?php 
    // Archivo configuracion 
    require_once 'config.php'; 

    // Clase carrito
    include_once 'Cart.class.php'; 
    $cart = new Cart; 
?>

<!DOCTYPE html>
<html lang="es">
<head>
    <title>Cesta GirPet</title>
    <meta charset="utf-8">

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="estilo.css">

    <!-- Custom style -->

        <!--<CSS personalizado-->
                <style>

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
                th{
                    color: aliceblue;
                }  
                td{
                    color: aliceblue;
                }
                .btn btn-block btn-primary{
                    background: forestgreen;
                }
                </style>
    <link href="css/style.css" rel="stylesheet"> 

        <!-- jQuery libreria -->
        <script src="js/jquery-3.6.3.min.js"></script>
        <!--  actualizamos la cantidad de un artículo en el carrito enviando una solicitud AJAX a un script PHP con la cantidad actualizada y el id del artículo -->
        <script>
            function updateCartItem(obj,id){
                $.get("cartAction.php", {action:"updateCartItem", id:id, qty:obj.value}, function(data){
                    if(data == 'ok'){
                        location.reload();
                    }else{
                        alert('no hemos podido actualizar el carrito, intentalo de nuevo.');
                    }
                });
            }
        </script>
    </head>
    <body>
        <!-- CABECERA -->
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
        <!-- CARRITO -->
        <h1 class="h1carro">Articulos GitPets</h1>
        <div class="row">
            <div class="cart">
                <div class="col-12">
                    <div class="table-responsive">
                        <table class="table table-striped cart">
                            <thead>
                                <tr>
                                    <th width="10%"></th>
                                    <th width="35%">Producto</th>
                                    <th width="15%">Precio</th>
                                    <th width="15%">Cantidad</th>
                                    <th width="20%">Total</th>
                                    <th width="5%"> </th>
                                </tr>
                            </thead>
                            <tbody>
                            <?php 
                            if($cart->total_items() > 0){ 
                                // Coje los elelemtos de la sesion
                                $cartItems = $cart->contents(); 
                                foreach($cartItems as $item){ 
                                    $proImg = !empty($item["image"])?'images/products/'.$item["image"]:'images/demo-img.png'; 
                            ?>
                                <tr>
                                    <td><img src="<?php echo $proImg; ?>" alt="..."></td>
                                    <td><?php echo $item["name"]; ?></td>
                                    <td><?php echo CURRENCY_SYMBOL.$item["price"].' '.CURRENCY; ?></td>
                                    <td><input class="form-control" type="number" value="<?php echo $item["qty"]; ?>" onchange="updateCartItem(this, '<?php echo $item["rowid"]; ?>')"/></td>
                                    <td><?php echo CURRENCY_SYMBOL.$item["subtotal"].' '.CURRENCY; ?></td>
                                    <td><button class="btn btn-sm btn-danger" onclick="return confirm('Estas seguro?')?window.location.href='cartAction.php?action=removeCartItem&id=<?php echo $item["rowid"]; ?>':false;" title="Remove Item"><i class="itrash"></i> </button> </td>
                                </tr>
                            <?php } }else{ ?>
                                <tr><td colspan="6"><p>Tu carrito esta vacio.....</p></td>
                            <?php } ?>
                            <?php if($cart->total_items() > 0){ ?>
                                <tr>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td><strong>Total Carrito</strong></td>
                                    <td><strong><?php echo CURRENCY_SYMBOL.$cart->total().' '.CURRENCY; ?></strong></td>
                                    <td></td>
                                </tr>
                            <?php } ?>
                            </tbody>
                        </table>
                    </div>
                </div>
                <div class="col mb-2">
                    <div class="row">
                        <div class="col-sm-12  col-md-6">
                            <a href="index.php" class="btn btn-block btn-secondary"><i class="ialeft"></i>Vuelve a la tienda</a>
                        </div>
                        <div class="col-sm-12 col-md-6 text-right">
                            <?php if($cart->total_items() > 0){ ?>
                            <a href="checkout.php" class="btn btn-block btn-primary">Continua con la compra<i class="iaright"></i></a>
                            <?php } ?>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </body>
</html>