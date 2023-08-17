<?php 
// Comienza sesion
if(!session_id()){ 
    session_start(); 
} 
 
class Cart { 
    protected $cart_contents = array(); 
     
    public function __construct(){ 
        // cojemos el array de del carrito 
        $this->cart_contents = !empty($_SESSION['cart_contents'])?$_SESSION['cart_contents']:NULL; 
        if ($this->cart_contents === NULL){ 
            // valores de base 
            $this->cart_contents = array('cart_total' => 0, 'total_items' => 0); 
        } 
    } 
     
    /** 
     * Contenido del carrito: lo devolvemos entero
     * 
     */ 
    public function contents(){ 
        // el primero primero
        $cart = array_reverse($this->cart_contents); 
 
        // lo eliminamos para evitar problemas 
        unset($cart['total_items']); 
        unset($cart['cart_total']); 
 
        return $cart; 
    } 
     
    /** 
     Devuelve informacion del carrito
     */ 
    public function get_item($row_id){ 
        return (in_array($row_id, array('total_items', 'cart_total'), TRUE) OR ! isset($this->cart_contents[$row_id])) 
            ? FALSE 
            : $this->cart_contents[$row_id]; 
    } 
     
    /** 
     Devuelve el total de objetos del carito
     */ 
    public function total_items(){ 
        return $this->cart_contents['total_items']; 
    } 
     
    /** 
     * Devuelve el precio total
     */ 
    public function total(){ 
        return $this->cart_contents['cart_total']; 
    } 
     
    /** 
     Inserta elementos en el carrito 
     */ 
    public function insert($item = array()){ 
        if(!is_array($item) OR count($item) === 0){ 
            return FALSE; 
        }else{ 
            if(!isset($item['id'], $item['name'], $item['price'], $item['qty'])){ 
                return FALSE; 
            }else{ 
                /* 
                 
                 */ 
                // cantidad 
                $item['qty'] = (float) $item['qty']; 
                if($item['qty'] == 0){ 
                    return FALSE; 
                } 
                // prepara el precio
                $item['price'] = (float) $item['price']; 
                // crea un id unico para el objeto en el carrito
                $rowid = md5($item['id']); 
                
                $old_qty = isset($this->cart_contents[$rowid]['qty']) ? (int) $this->cart_contents[$rowid]['qty'] : 0; 
                
                $item['rowid'] = $rowid; 
                $item['qty'] += $old_qty; 
                $this->cart_contents[$rowid] = $item; 
                 
                // guarda el objeto
                if($this->save_cart()){ 
                    return isset($rowid) ? $rowid : TRUE; 
                }else{ 
                    return FALSE; 
                } 
            } 
        } 
    } 
     
    /** 
    Actualizacion del carrito
     */ 
    public function update($item = array()){ 
        if (!is_array($item) OR count($item) === 0){ 
            return FALSE; 
        }else{ 
            if (!isset($item['rowid'], $this->cart_contents[$item['rowid']])){ 
                return FALSE; 
            }else{ 
                // prep the quantity 
                if(isset($item['qty'])){ 
                    $item['qty'] = (float) $item['qty']; 
                    // remove the item from the cart, if quantity is zero 
                    if ($item['qty'] == 0){ 
                        unset($this->cart_contents[$item['rowid']]); 
                        return TRUE; 
                    } 
                } 
                 
                 
                $keys = array_intersect(array_keys($this->cart_contents[$item['rowid']]), array_keys($item)); 
                
                if(isset($item['price'])){ 
                    $item['price'] = (float) $item['price']; 
                } 
               
                foreach(array_diff($keys, array('id', 'name')) as $key){ 
                    $this->cart_contents[$item['rowid']][$key] = $item[$key]; 
                } 
                
                $this->save_cart(); 
                return TRUE; 
            } 
        } 
    } 
     
    
    protected function save_cart(){ 
        $this->cart_contents['total_items'] = $this->cart_contents['cart_total'] = 0; 
        foreach ($this->cart_contents as $key => $val){ 
            // nos aseguramos que el array contiene los indices aporpiados 
            if(!is_array($val) OR !isset($val['price'], $val['qty'])){ 
                continue; 
            } 
      
            $this->cart_contents['cart_total'] += ($val['price'] * $val['qty']); 
            $this->cart_contents['total_items'] += $val['qty']; 
            $this->cart_contents[$key]['subtotal'] = ($this->cart_contents[$key]['price'] * $this->cart_contents[$key]['qty']); 
        } 
         
        // si el carrito esta vacio, lo elimina de la sesion
        if(count($this->cart_contents) <= 2){ 
            unset($_SESSION['cart_contents']); 
            return FALSE; 
        }else{ 
            $_SESSION['cart_contents'] = $this->cart_contents; 
            return TRUE; 
        } 
    } 
     
    /** 
     Quita un elemento del carrito 
     */ 
     public function remove($row_id){ 
        // unset & save 
        unset($this->cart_contents[$row_id]); 
        $this->save_cart(); 
        return TRUE; 
     } 
      
    /** 
     * Eliminacion del carrito
     */ 
    public function destroy(){ 
        $this->cart_contents = array('cart_total' => 0, 'total_items' => 0); 
        unset($_SESSION['cart_contents']); 
    } 
}