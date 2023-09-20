function bucle() {

    // Iteramos uno a uno y realizamos operaciones
    contexto.clearRect(0,0,anchuranavegador,alturanavegador);
    //contexto.drawImage(imagenrejilla,0,0);
    //contexto.drawImage(imgFondo,0,0);
    
    for (var i = 0; i < numeropersonajes; i++) {
        arraypersonajes[i].mueve();

        contexto.drawImage(
            imgPersonaje1,
            0,
            0,
            128,
            128,
            isox(arraypersonajes[i].x, arraypersonajes[i].y),
            isoy(arraypersonajes[i].x, arraypersonajes[i].y), 40, 40,
        );
    }

    clearTimeout(temporizador); //Eliminamos el temporizador del inicio
    temporizador = setTimeout("bucle()", 33);//Creamos uno nuevo

}