<?php 
    if(empty($_REQUEST['id'])){ 
        header("Location: index.php"); 
    } 
        $order_id = base64_decode($_REQUEST['id']); 

        // Conexiom
        require_once 'dbConnect.php'; 

        // Detalles base de datos, usamos alias
        $sqlQ = "SELECT r.*, c.first_name, c.last_name, c.email, c.phone, c.address FROM orders as r LEFT JOIN customers as c ON c.id = r.customer_id WHERE r.id=?";
        // creamos una declaración preparada utilizando el método prepare() del objeto $db.
        $stmt = $db->prepare($sqlQ); 
        //vinculamos la variable $db_id al marcador de posición en la instrucción SQL utilizando el método bind_param() del objeto $stmt.
        $stmt->bind_param("i", $db_id);
        // asignamos el valor de $order_id a la variable $db_id
        $db_id = $order_id;
        //ejecutamos
        $stmt->execute(); 
        // recuperamos el conjunto de resultados de la consulta como un objeto mysqli_result utilizando el método get_result() del objeto $stmt
        $result = $stmt->get_result(); 

        if($result->num_rows > 0){ 
            $orderInfo = $result->fetch_assoc(); 
    }else{ 
        header("Location: index.php"); 
    } 
?>

<!DOCTYPE html>
<html lang="es">
    <head>
    <title>Pedido realizado</title>
    <meta charset="utf-8">

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="estilo.css">

    <!--CSS personalizado -->

        <style>
        th{
            color: aliceblue;
        }
        p{
            color: aliceblue;
        }
        td{
            color: aliceblue;
        }
        .hdr{
            color: aliceblue;
        }
        .col-md-12{
            background-color: cornflowerblue;
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
        <div class="side-nav">
            <img src="images/logogitpet.png" class="logo">
            <a href="###">PEDIDO REALIZADO</a>
        </div>  
        <button>Registrate!</button>
        </div>

        <h1 class="h1carro">Estado del Pedido</h1>

        <div class="col-12">

            <?php if(!empty($orderInfo)){ ?>
                <div class="col-md-12">
                    <div class="alert alert-success">Tu pedido se a realizado correctamente</div>
                </div>

                <!-- Order status & shipping info -->
                <div class="row col-lg-12 ord-addr-info">
                    <div class="hdr">Order Info</div>
                    <p><b>Reference ID:</b> #<?php echo $orderInfo['id']; ?></p>
                    <p><b>Total:</b> <?php echo CURRENCY_SYMBOL.$orderInfo['grand_total'].' '.CURRENCY; ?></p>
                    <p><b>Placed On:</b> <?php echo $orderInfo['created']; ?></p>
                    <p><b>Buyer Name:</b> <?php echo $orderInfo['first_name'].' '.$orderInfo['last_name']; ?></p>
                    <p><b>Email:</b> <?php echo $orderInfo['email']; ?></p>
                    <p><b>Phone:</b> <?php echo $orderInfo['phone']; ?></p>
                    <p><b>Address:</b> <?php echo $orderInfo['address']; ?></p>
                </div>

                <!-- Order items -->
                <div class="row col-lg-12">
                    <table class="table table-hover cart">
                        <thead>
                            <tr>
                                <th width="10%"></th>
                                <th width="45%">Producto</th>
                                <th width="15%">Precio</th>
                                <th width="10%">CANT</th>
                                <th width="20%">Sub Total</th>
                                </tr>
                            </thead>
                            <tbody>
                        <?php 
                        // Get order items from the database 
                        $sqlQ = "SELECT i.*, p.name, p.price FROM order_items as i LEFT JOIN products as p ON p.id = i.product_id WHERE i.order_id=?"; 
                        $stmt = $db->prepare($sqlQ); 
                        $stmt->bind_param("i", $db_id); 
                        $db_id = $order_id; 
                        $stmt->execute(); 
                        $result = $stmt->get_result(); 

                        if($result->num_rows > 0){  
                            while($item = $result->fetch_assoc()){ 
                                $price = $item["price"]; 
                                $quantity = $item["quantity"]; 
                                $sub_total = ($price*$quantity); 
                                $proImg = !empty($item["image"])?'images/products/'.$item["image"]:'images/demo-img.png'; 
                        ?>
                                <tr>
                                    <td><img src="<?php echo $proImg; ?>" alt="..."></td>
                                    <td><?php echo $item["name"]; ?></td>
                                    <td><?php echo CURRENCY_SYMBOL.$price.' '.CURRENCY; ?></td>
                                    <td><?php echo $quantity; ?></td>
                                <td><?php echo CURRENCY_SYMBOL.$sub_total.' '.CURRENCY; ?></td>
                            </tr>
                        <?php } } ?>
                        </tbody>
                    </table>
                </div>

                <div class="col mb-2">
                    <div class="row">
                        <div class="col-sm-12  col-md-6">
                            <a href="index.php" class="btn btn-block btn-primary"><i class="ialeft"></i>Continua comprando</a>
                        </div>
                    </div>
                </div>
            <?php }else{ ?>
            <div class="col-md-12">
                <div class="alert alert-danger">A habido un error!</div>
            </div>
            <?php } ?>
        </div>
    </div>
    </body>
</html>