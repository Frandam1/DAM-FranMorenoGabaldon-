<?php 
// Incluimos la conexion 
require_once 'dbConnect.php'; 
 
// Iniciamos la clase
require_once 'Cart.class.php'; 
$cart = new Cart; 
 
// Redireccion por defecto
$redirectURL = 'index.php'; 
 
// Peticion
if(isset($_REQUEST['action']) && !empty($_REQUEST['action'])){ 
    if($_REQUEST['action'] == 'addToCart' && !empty($_REQUEST['id'])){ 
        $product_id = $_REQUEST['id']; 
 
        // Fetch de los detalles del producto de la BBDD
        $sqlQ = "SELECT * FROM products WHERE id=?"; 
        $stmt = $db->prepare($sqlQ); 
        $stmt->bind_param("i", $db_id); 
        $db_id = $product_id; 
        $stmt->execute(); 
        $result = $stmt->get_result(); 
        $productRow = $result->fetch_assoc(); 
 
        $itemData = array( 
            'id' => $productRow['id'], 
            'image' => $productRow['image'], 
            'name' => $productRow['name'], 
            'price' => $productRow['price'], 
            'qty' => 1 
        ); 
         
        // Inserta el elemento en el carrito
        $insertItem = $cart->insert($itemData); 
         
        
        $redirectURL = $insertItem?'viewCart.php':'index.php'; 
            }elseif($_REQUEST['action'] == 'updateCartItem' && !empty($_REQUEST['id'])){ 
            // Para actualizar el carrito
                $itemData = array( 
                'rowid' => $_REQUEST['id'], 
                'qty' => $_REQUEST['qty'] 
                ); 
                $updateItem = $cart->update($itemData); 

                // Devuelve el estado
                echo $updateItem?'ok':'err';die; 
            }elseif($_REQUEST['action'] == 'removeCartItem' && !empty($_REQUEST['id'])){ 

                $deleteItem = $cart->remove($_REQUEST['id']); 

                // Para redirigir
                $redirectURL = 'viewCart.php'; 
            }elseif($_REQUEST['action'] == 'placeOrder' && $cart->total_items() > 0){ 
                $redirectURL = 'checkout.php'; 

                // Informacion 
                $_SESSION['postData'] = $_POST; 

                $first_name = strip_tags($_POST['first_name']); 
                $last_name = strip_tags($_POST['last_name']); 
                $email = strip_tags($_POST['email']); 
                $phone = strip_tags($_POST['phone']); 
                $address = strip_tags($_POST['address']); 
         
        $errorMsg = ''; 
            if(empty($first_name)){ 
                $errorMsg .= 'Please enter your first name.<br/>'; 
            } 
            if(empty($last_name)){ 
                $errorMsg .= 'Please enter your last name.<br/>'; 
            } 
            if(empty($email) || !filter_var($email, FILTER_VALIDATE_EMAIL)){ 
                $errorMsg .= 'Please enter a valid email.<br/>'; 
            } 
            if(empty($phone)){ 
                $errorMsg .= 'Please enter your contact number.<br/>'; 
            } 
            if(empty($address)){ 
                $errorMsg .= 'Please enter your address.<br/>'; 
            } 
         
        if(empty($errorMsg)){ 
            // Insert de la info del comprador en la BBDD
            $sqlQ = "INSERT INTO customers (first_name,last_name,email,phone,address,created,modified) VALUES (?,?,?,?,?,NOW(),NOW())"; 
            $stmt = $db->prepare($sqlQ); 
            $stmt->bind_param("sssss", $db_first_name, $db_last_name, $db_email, $db_phone, $db_address); 
            $db_first_name = $first_name; 
            $db_last_name = $last_name; 
            $db_email = $email; 
            $db_phone = $phone; 
            $db_address = $address; 
            $insertCust = $stmt->execute(); 
             
            if($insertCust){ 
                $custID = $stmt->insert_id; 
                 
                // Insert de info en la BBDD
                $sqlQ = "INSERT INTO orders (customer_id,grand_total,created,status) VALUES (?,?,NOW(),?)"; 
                $stmt = $db->prepare($sqlQ); 
                $stmt->bind_param("ids", $db_customer_id, $db_grand_total, $db_status); 
                $db_customer_id = $custID; 
                $db_grand_total = $cart->total(); 
                $db_status = 'Pending'; 
                $insertOrder = $stmt->execute(); 
             
                if($insertOrder){ 
                    $orderID = $stmt->insert_id; 
                     
                    // Recibe los elelentos del carrito 
                    $cartItems = $cart->contents(); 
                     
                    // Insert BBDD 
                    if(!empty($cartItems)){ 
                        $sqlQ = "INSERT INTO order_items (order_id, product_id, quantity) VALUES (?,?,?)"; 
                        $stmt = $db->prepare($sqlQ); 
                        foreach($cartItems as $item){ 
                            $stmt->bind_param("ids", $db_order_id, $db_product_id, $db_quantity); 
                            $db_order_id = $orderID; 
                            $db_product_id = $item['id']; 
                            $db_quantity = $item['qty']; 
                            $stmt->execute(); 
                        } 
                         
                         
                        $cart->destroy(); 
                         
                        // Redireccion
                        $redirectURL = 'orderSuccess.php?id='.base64_encode($orderID); 
                    }else{ 
                        $sessData['status']['type'] = 'error'; 
                        $sessData['status']['msg'] = 'Algo a ido mal, intentalo de nuevo.'; 
                    } 
                }else{ 
                    $sessData['status']['type'] = 'error'; 
                    $sessData['status']['msg'] = 'Algo a ido mal, intentalo de nuevo.'; 
                } 
            }else{ 
                $sessData['status']['type'] = 'error'; 
                $sessData['status']['msg'] = 'Algo a ido mal, intentalo de nuevo.'; 
            } 
        }else{ 
            $sessData['status']['type'] = 'error'; 
            $sessData['status']['msg'] = '<p>Por favor rellena los campos.</p>'.$errorMsg;  
        } 
         
        
        $_SESSION['sessData'] = $sessData; 
    } 
} 
 

header("Location: $redirectURL"); 
exit();