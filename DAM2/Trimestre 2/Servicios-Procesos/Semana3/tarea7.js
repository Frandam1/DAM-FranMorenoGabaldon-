onmessage = function (datos) {
    //Calculo 1
    //console.log(datos)
    var destino = 0;
    // Iterar a través de los píxeles y realizar la inversión de colores
    for (var i = 0; i < datos.data.px.data.length - 8; i += 4) {
        var borde = false;//Presupongo q no hay bordes de inicio en el pixel que itero

        // Comprobar la diferencia de color entre el píxel actual y sus vecinos
        if (Math.abs(datos.data.px.data[i] - datos.data.px.data[i - (datos.data.mianchurabracket * 4) - 4]) > datos.data.miumbral) { borde = true; }//Arriba-iz
        if (Math.abs(datos.data.px.data[i] - datos.data.px.data[i - (datos.data.mianchurabracket * 4)]) > datos.data.miumbral) { borde = true; }//Arriba
        if (Math.abs(datos.data.px.data[i] - datos.data.px.data[i - (datos.data.mianchurabracket * 4) + 4]) > datos.data.miumbral) { borde = true; }//Arriba-derech
        if (Math.abs(datos.data.px.data[i] - datos.data.px.data[i - 4]) > datos.data.miumbral) { borde = true; }//Izq
        if (Math.abs(datos.data.px.data[i] - datos.data.px.data[i + 4]) > datos.data.miumbral) { borde = true; }//Dcha
        if (Math.abs(datos.data.px.data[i] - datos.data.px.data[i - (datos.data.mianchurabracket * 4) - 4]) > datos.data.miumbral) { borde = true; }//AbajoIzqd
        if (Math.abs(datos.data.px.data[i] - datos.data.px.data[i - (datos.data.mianchurabracket * 4)]) > datos.data.miumbral) { borde = true; }//Abajo
        if (Math.abs(datos.data.px.data[i] - datos.data.px.data[i - (datos.data.mianchurabracket * 4) + 4]) > datos.data.miumbral) { borde = true; }//Abajodcha

        // Si se detecta un borde, establecer el píxel a negro; de lo contrario, a blanco
        if (borde == true) {
            datos.data.pxdst.data[i] = 0;
            datos.data.pxdst.data[i + 1] = 0;
            datos.data.pxdst.data[i + 2] = 0;
            datos.data.pxdst.data[i + 3] = 255;
        } else {
            datos.data.pxdst.data[i] = 255;
            datos.data.pxdst.data[i + 1] = 255;
            datos.data.pxdst.data[i + 2] = 255;
            datos.data.pxdst.data[i + 3] = 255;
        }
    }
    json = { mix: datos.data.mix, miy: datos.data.miy, resultado: datos.data.pxdst,miidworker:datos.data.idworker }
    postMessage(json)
}





