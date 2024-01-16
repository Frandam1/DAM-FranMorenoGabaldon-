function bucle() {

    // Iteramos uno a uno y realizamos operaciones
    contexto.clearRect(0, 0, anchuranavegador, alturanavegador);
    //contexto.drawImage(imagenrejilla,0,0);
    //contexto.drawImage(imgFondo,0,0);
    contextopunto.clearRect(0,0,512,512);
    contextopunto.fillRect(posx/50,posy/50,5,5)
    dibujaterreno();
    dibujarProps();

    /**COLISION DEL PERSONAJE */
    var pixelpersonaje = contextomapa.getImageData(Math.round(posx/50),Math.round(posy/50),1,1)
    for(var i = 0;i<pixelpersonaje.data.length;i+=4){
        var cr = pixelpersonaje.data[i];
        var cg = pixelpersonaje.data[i+1];
        var cb = pixelpersonaje.data[i+2];
        var ca = pixelpersonaje.data[i+3];
        posz= cr*alturabloquez;
        if(ca == 0){
        
            console.log("Te has caido")
            velocidadz *=1.3;
            posz += velocidadz;
           
           }
    }
    if(posz > 800){
        window.location = window.location;
    }

    var mediopantallax = anchuranavegador/2;
    var mediopantallay = alturanavegador/2;

    //if(isox(posx,posy)+desfasex <= mediopantallax){desfasex+=velocidaddesfase;}else{desfasex-=velocidaddesfase;}
    //if(isoy(posx,posy)+desfasey <= mediopantallay){desfasey+=velocidaddesfase;}else{desfasey-=velocidaddesfase;}
    desfasex = mediopantallax - isox(posx,posy)
    desfasey = mediopantallay - isoy(posx,posy)

    // DIBUJAMOS LOS PERSONAJES
    for (var i = 0; i < numeropersonajes; i++) {

        var a = posx - arraypersonajes[i].x;
        var b = posy - arraypersonajes[i].y;
        var distancia = Math.sqrt(a * a + b * b);

        if (distancia < 400) {
            arraypersonajes[i].persigue();
        } else {
            arraypersonajes[i].mueve();
        }
        // Condicion de muerte
        if(distancia < 100 ){
            energia --;
        }


        var ytemp;

        if(arraypersonajes[i].color == 0){imgPersonaje = imgPersonaje1;}
        else if(arraypersonajes[i].color == 1){imgPersonaje = imgPersonaje2;}

        if (arraypersonajes[i].direccionisometrica == 0) { ytemp = 218; }//derecha
        if (arraypersonajes[i].direccionisometrica == 1) { ytemp = 146; }//abjo
        if (arraypersonajes[i].direccionisometrica == 2) { ytemp = 82; }//izquierda
        if (arraypersonajes[i].direccionisometrica == 3) { ytemp = 0; }//arriba

        if(
            isox(arraypersonajes[i].x,arraypersonajes[i].y)+desfasex > -100
            &&
            isox(arraypersonajes[i].x,arraypersonajes[i].y)+desfasex < anchuranavegador
            &&
            isoy(arraypersonajes[i].x,arraypersonajes[i].y)+desfasey > -100
            &&
            isoy(arraypersonajes[i].x,arraypersonajes[i].y)+desfasey < alturanavegador
            
        ){
        contexto.drawImage(
            imgPersonaje,
            arraypersonajes[i].estadoanim * 64,//Para cojer la animacion, toda la linea
            ytemp,
            64,
            76,//Porcion de sprite sheet que coje
            isox(arraypersonajes[i].x, arraypersonajes[i].y)+desfasex,
            isoy(arraypersonajes[i].x, arraypersonajes[i].y)+desfasey-arraypersonajes[i].z*alturabloquez
            
            , 60, 60,//Tamaño del frame
        );

        //Barra de energia
        contexto.fillStyle = "black";
        contexto.fillRect(
            isox(arraypersonajes[i].x, arraypersonajes[i].y) + 16 +desfasex,
            isoy(arraypersonajes[i].x, arraypersonajes[i].y) + desfasey-arraypersonajes[i].z*alturabloquez,
            32, 8
        )
        contexto.fillStyle = "green";
        contexto.fillRect(
            isox(arraypersonajes[i].x, arraypersonajes[i].y) + 16 + 1 +desfasex,
            isoy(arraypersonajes[i].x, arraypersonajes[i].y) + 1 +desfasey-arraypersonajes[i].z*alturabloquez,
            32 * (arraypersonajes[i].energia / 100),
            5
        )
    }
    }

        ///////////////////////// DIBUJAMOS LOS Recogibles  /////////////////////////
        var numerorecogibles = 0
        for (var i = 0; i < numerorecogibles; i++) {
            //Distancia recogibles
            var a = posx - arrayrecogibles[i].x;
            var b = posy - arrayrecogibles[i].y;
            var distancia = Math.sqrt(a * a + b * b);
            if(distancia < 50){
                //console.log("estas cerca")
                arrayrecogibles.splice(i,1);
                numerorecogibles--;
                energia += 40;
            }
            //console.log("el tiepo es "+arrayrecogibles[i].tipo)
            if(arrayrecogibles[i].tipo == 1){
                contexto.drawImage(
                    imgRecogible1,
                    isox(arrayrecogibles[i].x, arrayrecogibles[i].y)+desfasex,
                    isoy(arrayrecogibles[i].x, arrayrecogibles[i].y)+desfasey-arrayrecogibles[i].z*alturabloquez
                    
                    , 60, 60,//Tamaño del frame
                );
            }

            if(arrayrecogibles[i].tipo == 2){
                contexto.drawImage(
                    imgRecogible2,
                    isox(arrayrecogibles[i].x, arrayrecogibles[i].y)+desfasex,
                    isoy(arrayrecogibles[i].x, arrayrecogibles[i].y)+desfasey-arrayrecogibles[i].z*alturabloquez
                    
                    , 60, 60,//Tamaño del frame
                );
            }

            if(arrayrecogibles[i].tipo == 3){
                contexto.drawImage(
                    imgRecogible3,
                    isox(arrayrecogibles[i].x, arrayrecogibles[i].y)+desfasex,
                    isoy(arrayrecogibles[i].x, arrayrecogibles[i].y)+desfasey-arrayrecogibles[i].z*alturabloquez
                    
                    , 60, 60,//Tamaño del frame
                );
            }

        }

        ///////////////////////// DIBUJAMOS LOS PROPS  /////////////////////////
        for (var i = 0; i < numeroprops; i++) {
            
            contexto.drawImage(
                bloquearquitectura1,
                isox(arrayprops[i].x, arrayprops[i].y)+120,
                isoy(arrayprops[i].x, arrayprops[i].y)+120-
                arrayprops[i].z*alturabloquez
                
                , 120, 200,//Tamaño del frame
            );
        }



    // PJ PROTAGONISTA
    if(saltando == true){
        saltopersonaje += velocidadz;
        velocidadz -= 5;
        if(saltopersonaje < 0){saltando = 0}
    }
    if((moviendo == true && accion == false) || accion == true){
        estadoanim++;
        if (estadoanim > 7) { estadoanim = 0; accion =false }
    }else{estadoanim = 1};

    if(accion == true){
    contexto.drawImage(
        imgAccion,
        estadoanim * 64,
        angulo + 64,
        54,
        64,//Porcion de sprite sheet que coje
        isox(posx, posy)+desfasex,
        isoy(posx, posy)+desfasey-posz-saltopersonaje,
        64, 64 //Tamaño del frame
    );
    }else{
        contexto.drawImage(
            imgPersonajeprota,
            estadoanim * 64,
            angulo + 64,
            54,
            64,//Porcion de sprite sheet que coje
            isox(posx, posy)+desfasex,
            isoy(posx, posy)+desfasey-posz-saltopersonaje,
            64, 64 //Tamaño del frame
        );
    }
    //Barra de energia Protagonista
    contexto.fillStyle = "black";
    contexto.fillRect(
        isox(posx, posy) + 16 + desfasex,
        isoy(posx, posy) + desfasey-posz-saltopersonaje,
        32, 8
    )
    contexto.fillStyle = "green";
    contexto.fillRect(
        isox(posx, posy) + 16 + 1 + desfasex,
        isoy(posx, posy) + 1 + desfasey-posz-saltopersonaje,
        32 * (energia / 100),
        5
    )
    // $(document).keydown(function (e) {
    //     if (e.key == "w") { direccion = 1; }
    //     if (e.key == "s") { direccion = 2; }
    //     if (e.key == "a") { direccion = 3; }
    //     if (e.key == "d") { direccion = 4; }
    // })

    if (direccion == 1) { 
        var solido = contextomapaprops.getImageData(Math.floor(posx/50),Math.floor(posy/50),1,1).data[3]
        if (solido == 0){
            posy -= velocidad; angulo = -64;
        }
        
     }
    if (direccion == 2) { 
        var solido = contextomapaprops.getImageData(Math.floor(posx/50),Math.floor(posy/50),1,1).data[3]
        if (solido == 0){
        posy += velocidad; angulo = 64;
    } 
    }
    if (direccion == 3) { 
        var solido = contextomapaprops.getImageData(Math.floor(posx/50),Math.floor(posy/50),1,1).data[3]
        if (solido == 0){
        posx -= velocidad; angulo = 0;
        }
     }
    if (direccion == 4) {
        var solido = contextomapaprops.getImageData(Math.floor(posx/50),Math.floor(posy/50),1,1).data[3]
        if (solido == 0){
         posx += velocidad; angulo = 128;
         }
        }

    contexto.drawImage(imgPremio,isox(premiox,premioy)+desfasex,isoy(premiox,premioy)+desfasey,anchoNuevo, altoNuevo);
    var a = posx - premiox;
    var b = posy - premioy;
    var distancia = Math.sqrt(a * a + b * b);
    
    if(distancia < 20){
        console.log("premio")
        subirnivel();
    }

    if(energia < 2){
        pausa = true;
        $("#pantallainicial").fadeIn("slow");
        reiniciar();
        contexto.clearRect(0, 0, anchuranavegador, alturanavegador);
        pausa = true;
    }

    clearTimeout(temporizador); //Eliminamos el temporizador del inicio
    if (pausa == false) {
        temporizador = setTimeout("bucle()", 33);//Velocidad animacion
    }


}