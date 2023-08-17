<?php 

    require_once 'config.php'; 


    include_once 'Cart.class.php'; 
    $cart = new Cart; 


    if($cart->total_items() <= 0){ 
        header("Location: index.php"); 
    } 


    $postData = !empty($_SESSION['postData'])?$_SESSION['postData']:array(); 
    unset($_SESSION['postData']); 


    $sessData = !empty($_SESSION['sessData'])?$_SESSION['sessData']:''; 
    if(!empty($sessData['status']['msg'])){ 
        $statusMsg = $sessData['status']['msg']; 
        $statusMsgType = $sessData['status']['type']; 
        unset($_SESSION['sessData']['status']); 
    } 
?>

<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Checkout Carrito</title>
        <meta charset="utf-8">

        <!-- Bootstrap core CSS -->
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <link rel="stylesheet" href="estilo.css">


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

        <div class="col-12">
            <div class="checkout">
                <div class="row">
                    <?php if(!empty($statusMsg) && ($statusMsgType == 'success')){ ?>
                    <div class="col-md-12">
                        <div class="alert alert-success"><?php echo $statusMsg; ?></div>
                    </div>
                    <?php }elseif(!empty($statusMsg) && ($statusMsgType == 'error')){ ?>
                    <div class="col-md-12">
                        <div class="alert alert-danger"><?php echo $statusMsg; ?></div>
                    </div>
                    <?php } ?>

                    <div class="col-md-4 order-md-2 mb-4">
                        <h4 class="d-flex justify-content-between align-items-center mb-3">
                            <span class="text-muted">Tu Compra</span>
                            <span class="badge badge-secondary badge-pill"><?php echo $cart->total_items(); ?></span>
                        </h4>
                        <ul class="list-group mb-3">
                        <?php 
                        if($cart->total_items() > 0){ 
                            // Get cart items from session 
                            $cartItems = $cart->contents(); 
                            foreach($cartItems as $item){ 
                        ?>
                            <li class="list-group-item d-flex justify-content-between lh-condensed">
                                <div>
                                    <h6 class="my-0"><?php echo $item["name"]; ?></h6>
                                    <small class="text-muted"><?php echo CURRENCY_SYMBOL.$item["price"]; ?>(<?php echo $item["qty"]; ?>)</small>
                                </div>
                                <span class="text-muted"><?php echo CURRENCY_SYMBOL.$item["subtotal"]; ?></span>
                            </li>
                        <?php } } ?>
                            <li class="list-group-item d-flex justify-content-between">
                                <span>Total (<?php echo CURRENCY; ?>)</span>
                                <strong><?php echo CURRENCY_SYMBOL.$cart->total(); ?></strong>
                            </li>
                        </ul>
                        <a href="index.php" class="btn btn-sm btn-info">Añande mas elementos</a>
                    </div>
                    <div class="col-md-8 order-md-1">
                        <h4 class="mb-3">Detalles de Contacto</h4>
                        <form method="post" action="cartAction.php">
                            <div class="row">
                                <div class="col-md-6 mb-3">
                                    <label for="first_name">Nombre</label>
                                    <input type="text" class="form-control" name="first_name" value="<?php echo !empty($postData['first_name'])?$postData['first_name']:''; ?>" required>
                                </div>
                                <div class="col-md-6 mb-3">
                                    <label for="last_name">Apellidos</label>
                                    <input type="text" class="form-control" name="last_name" value="<?php echo !empty($postData['last_name'])?$postData['last_name']:''; ?>" required>
                                </div>
                            </div>
                            <div class="mb-3">
                                <label for="email">Email</label>
                                <input type="email" class="form-control" name="email" value="<?php echo !empty($postData['email'])?$postData['email']:''; ?>" required>
                            </div>
                            <div class="mb-3">
                                <label for="phone">Telefono</label>
                                <input type="text" class="form-control" name="phone" value="<?php echo !empty($postData['phone'])?$postData['phone']:''; ?>" required>
                            </div>
                            <div class="mb-3">
                                <label for="last_name">Direccion</label>
                                <input type="text" class="form-control" name="address" value="<?php echo !empty($postData['address'])?$postData['address']:''; ?>" required>
                            </div>
                            <input type="hidden" name="action" value="placeOrder"/>
                            <input class="btn btn-success btn-block" type="submit" name="checkoutSubmit" value="Autoriza la compra!">
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </body>
</html>