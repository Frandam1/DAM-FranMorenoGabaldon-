onmessage = function(json){  //Funcion que se ejecuta al recibir mensaje, arg datos
    
    datos = json.data.datos
    centro = datos.data[16];//accedemos a una propiedad esp. data y la guardamos

    var viva;
    var celulasvivas = 0;

        if(datos.data [0] == 0){celulasvivas++}
        if(datos.data [4] == 0){celulasvivas++}
        if(datos.data [8] == 0){celulasvivas++}
        if(datos.data [12] == 0){celulasvivas++}
        if(datos.data [20] == 0){celulasvivas++}
        if(datos.data [24] == 0){celulasvivas++}
        if(datos.data [28] == 0){celulasvivas++}
        if(datos.data [32] == 0){celulasvivas++}

        if(centro == 255){
            if(celulasvivas == 3){
                viva = true;
            }else{
                viva = false;
            }
        }
        if(centro == 0){
            if(celulasvivas == 3 || celulasvivas == 2){
                viva = true;
            }else{
                viva = false;
            }
        }

        var jsondevuelta = {"datos":viva,"x":json.data.x,"y":json.data.y}
        postMessage(jsondevuelta);
}
