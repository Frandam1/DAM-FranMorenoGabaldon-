function bucle() {

    // Iteramos uno a uno y realizamos operaciones
    contexto.clearRect(0,0,anchuranavegador,alturanavegador);
    //contexto.drawImage(imagenrejilla,0,0);
    //contexto.drawImage(imgFondo,0,0);

    // DIBUJAMOS LOS PERSONAJES
    for (var i = 0; i < numeropersonajes; i++) {
        arraypersonajes[i].mueve();
        var ytemp;
        if(arraypersonajes[i].direccionisometrica == 0){ytemp = 218;}//derecha
        if(arraypersonajes[i].direccionisometrica == 1){ytemp = 146;}//abjo
        if(arraypersonajes[i].direccionisometrica == 2){ytemp = 82;}//izquierda
        if(arraypersonajes[i].direccionisometrica == 3){ytemp = 0;}//arriba

        contexto.drawImage(
            imgPersonaje1,
            arraypersonajes[i].estadoanim*64,//Para cojer la animacion, toda la linea
            ytemp,
            64,
            76,//Porcion de sprite sheet que coje
            isox(arraypersonajes[i].x, arraypersonajes[i].y),
            isoy(arraypersonajes[i].x, arraypersonajes[i].y), 60, 60,//Tamaño del frame
        );
        contexto.fillStyle = "black";
        contexto.fillRect(
            isox(arraypersonajes[i].x, arraypersonajes[i].y)+16,
            isoy(arraypersonajes[i].x, arraypersonajes[i].y),
            32,8
        )
        contexto.fillStyle = "green";
        contexto.fillRect(
            isox(arraypersonajes[i].x, arraypersonajes[i].y)+16+1,
            isoy(arraypersonajes[i].x, arraypersonajes[i].y)+1,
            32*(arraypersonajes[i].energia/100),
            5
        )
        
    }
    // PJ PROTAGONISTA
    estadoanim++;
    if(estadoanim > 7){estadoanim = 0;}
    contexto.drawImage(
        imgPersonaje,
        estadoanim*64,
        angulo+64,
        54,
        64,//Porcion de sprite sheet que coje
        isox(posx,posy),
        isoy(posx,posy), 64, 64,//Tamaño del frame
    );
    // $(document).keydown(function (e) {
    //     if (e.key == "w") { direccion = 1; }
    //     if (e.key == "s") { direccion = 2; }
    //     if (e.key == "a") { direccion = 3; }
    //     if (e.key == "d") { direccion = 4; }
    // })

    if(direccion == 1){posy -= velocidad;angulo=-64;}
    if(direccion == 2){posy += velocidad;angulo=64;}
    if(direccion == 3){posx -= velocidad;angulo=0;}
    if(direccion == 4){posx += velocidad;angulo=128;}



    clearTimeout(temporizador); //Eliminamos el temporizador del inicio
    temporizador = setTimeout("bucle()", 33);//Velocidad animacion

}