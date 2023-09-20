
function inicio() {
    // Creamos una instancia sobre la que trabajar por cada uno de los objetos del array
    for (var i = 0; i < numeropersonajes; i++) {
        arraypersonajes[i] = new Personaje;
    }

    console.log("funcion inicio");
    temporizador = setTimeout(bucle, 1000);

}