
function isox(x, y) {
    return (x - y);
}
function isoy(x, y) {
    return ((x + y) / 2);
}

function reiniciar() {
    nivel = 1;
    numeropersonajes = 5;
    arraypersonajes = new Array();

    //Propiedades prota

    posx = 800;
    posy = -60;
    estadoanim = 0;
    angulo = 0;
    velocidad = 10;
    direccion = 0;
    energia = 100;

    // Delimitacion de terreno

    terrenox1 = 600;
    terrenoy1 = -400;
    terrenox2 = 1400;
    terrenoy2 = 450;

    pausa = false;

    for (var i = 0; i < numeropersonajes; i++) {
        arraypersonajes[i] = new Personaje;
    }
}

function subirnivel() {
    pausa = true;

    nivel++;
    $("#dimenivel").html(nivel);
    $("#pantallanivel").fadeIn("slow")
    contexto.clearRect(0, 0, anchuranavegador, alturanavegador);
    setTimeout(function () {
        $("#pantallanivel").fadeOut("slow")
        pausa = false;
        bucle();

    }, 2500)
    numeropersonajes += 5;
    arraypersonajes = new Array();

    //Propiedades prota

    posx = 800;
    posy = -60;
    estadoanim = 0;
    angulo = 0;
    velocidad = 10;
    direccion = 0;
    energia = 100;

    // Delimitacion de terreno

    terrenox1 = 600;
    terrenoy1 = -400;
    terrenox2 = 1400;
    terrenoy2 = 450;

    //pausa = false;



    for (var i = 0; i < numeropersonajes; i++) {
        arraypersonajes[i] = new Personaje;
    }

    premiox = Math.random() * (terrenox2 - terrenox1) + terrenox1;
    premioy = Math.random() * (terrenoy2 - terrenoy1) + terrenoy1;

}

function dibujaterreno() {
    contextofondo.clearRect(0, 0, anchuranavegador, alturanavegador)
    var anchurabloque = 50;
    var anchuradibujo = 120;
    contextomapa.drawImage(mapa, 0, 0);
    var pixeles = contextomapa.getImageData(0, 0, 512, 512);

    for (var i = 0; i < pixeles.data.length; i += 4) {
        var cr = pixeles.data[i];
        var cg = pixeles.data[i + 1];
        var cb = pixeles.data[i + 2];
        var ca = pixeles.data[i + 3];

        var x = (((i) % (512)) / 4);
        var y = Math.floor((i / 512) / 4);

        switch (true) {
            case cg === 100:
                //console.log("Esto es una parte del terreno");
                //console.log(x + "," + y);

                // Verificar las condiciones adicionales
                if (
                    isox(x * anchurabloque, y * anchurabloque) + desfasex > -100 &&
                    isox(x * anchurabloque, y * anchurabloque) + desfasex < anchuranavegador &&
                    isoy(x * anchurabloque, y * anchurabloque) + desfasey > -100 &&
                    isoy(x * anchurabloque, y * anchurabloque) + desfasey < alturanavegador
                ) {
                    contextofondo.drawImage(
                        bloque9,
                        isox(x * anchurabloque, y * anchurabloque) + desfasex,
                        isoy(x * anchurabloque, y * anchurabloque) + desfasey - pixeles.data[i] * alturabloquez,
                        anchuradibujo,
                        anchuradibujo
                    );
                }
                break;

            case cb === 100:
                {
                    contextofondo.drawImage(
                        bloqueasfalto,
                        isox(x * anchurabloque, y * anchurabloque) + desfasex,
                        isoy(x * anchurabloque, y * anchurabloque) + desfasey - pixeles.data[i] * alturabloquez,
                        anchuradibujo,
                        anchuradibujo
                    );
                }
                break;

            case cb === 150:

                {
                    contextofondo.drawImage(
                        bloquepavimentocasa,
                        isox(x * anchurabloque, y * anchurabloque) + desfasex,
                        isoy(x * anchurabloque, y * anchurabloque) + desfasey - pixeles.data[i] * alturabloquez,
                        anchuradibujo,
                        anchuradibujo
                    );
                }
                break;

            case cg === 200:

                {
                    contextofondo.drawImage(
                        bloquepavimento,
                        isox(x * anchurabloque, y * anchurabloque) + desfasex,
                        isoy(x * anchurabloque, y * anchurabloque) + desfasey - pixeles.data[i] * alturabloquez,
                        anchuradibujo,
                        anchuradibujo
                    );
                }
                break;



            // Puedes agregar más casos según tus necesidades
            // case ca === otroValor:
            //    // Otra lógica aquí
            //    break;


        }


        /*if (ca == 255) {
            //console.log("Estos es una parte del terreno");
            //console.log(x+","+y);
            if (
                isox(x * anchurabloque, y * anchurabloque) + desfasex > -100
                &&
                isox(x * anchurabloque, y * anchurabloque) + desfasex < anchuranavegador
                &&
                isoy(x * anchurabloque, y * anchurabloque) + desfasey > -100
                &&
                isoy(x * anchurabloque, y * anchurabloque) + desfasey < alturanavegador

            ) {
                
                contextofondo.drawImage(bloque9,
                    isox(x*anchurabloque,y*anchurabloque)+desfasex,
                    isoy(x*anchurabloque,y*anchurabloque)+desfasey-pixeles.data[i]*alturabloquez,
                    anchuradibujo,anchuradibujo
                    );
                
                
                
                
                /*
                /////////////////////////////////////// Nuevo 2EV
                var array = contextomapacolores.getImageData(x, y, 1, 1).data

                if (array[0] == 42 && array[1] == 42 && array[2] == 42) {
                    contextofondo.drawImage(
                        bloqueasfalto,
                        isox(x * anchurabloque, y * anchurabloque) + desfasex,
                        isoy(x * anchurabloque, y * anchurabloque) + desfasey - pixeles.data[i] * alturabloquez,
                        anchuradibujo,
                        anchuradibujo
                    );
                }
                if (array[0] == 67 && array[1] == 66 && array[2] == 66) {
                    contextofondo.drawImage(
                        bloqueacera,
                        isox(x * anchurabloque, y * anchurabloque) + desfasex,
                        isoy(x * anchurabloque, y * anchurabloque) + desfasey - pixeles.data[i] * alturabloquez,
                        anchuradibujo,
                        anchuradibujo
                    );
                }
                if (array[0] == 90 && array[1] == 90 && array[2] == 90) {
                    contextofondo.drawImage(
                        bloquepavimento,
                        isox(x * anchurabloque, y * anchurabloque) + desfasex,
                        isoy(x * anchurabloque, y * anchurabloque) + desfasey - pixeles.data[i] * alturabloquez,
                        anchuradibujo,
                        anchuradibujo
                    );
                }
                if (array[0] == 138 && array[1] == 138 && array[2] == 138) {
                    contextofondo.drawImage(
                        bloquepavimentocasa,
                        isox(x * anchurabloque, y * anchurabloque) + desfasex,
                        isoy(x * anchurabloque, y * anchurabloque) + desfasey - pixeles.data[i] * alturabloquez,
                        anchuradibujo,
                        anchuradibujo
                    );
                }
                if (array[0] == 65 && array[1] == 96 && array[2] == 54) {
                    contextofondo.drawImage(
                        bloquejardin,
                        isox(x * anchurabloque, y * anchurabloque) + desfasex,
                        isoy(x * anchurabloque, y * anchurabloque) + desfasey - pixeles.data[i] * alturabloquez,
                        anchuradibujo,
                        anchuradibujo
                    );
                }
                if (array[0] == 111 && array[1] == 133 && array[2] == 104) {
                    contextofondo.drawImage(
                        bloquevallajardin,
                        isox(x * anchurabloque, y * anchurabloque) + desfasex,
                        isoy(x * anchurabloque, y * anchurabloque) + desfasey - pixeles.data[i] * alturabloquez,
                        anchuradibujo,
                        anchuradibujo
                    );

                }
                
            }
        }// FIN IF */
    }


}

function posinicialjugador() {

    contextomapapersonajes.drawImage(mapapersonajes, 0, 0)
    var pixeles = contextomapapersonajes.getImageData(0, 0, 512, 512);

    for (var i = 0; i < pixeles.data.length; i += 4) {
        var cr = pixeles.data[i];
        var cg = pixeles.data[i + 1];
        var cb = pixeles.data[i + 2];
        var ca = pixeles.data[i + 3];

        var x = (((i) % (512)) / 4);
        var y = Math.floor((i / 512) / 4);

        if (cb === 200) {
            if (cr == 0 && cg >= 20 && cb == 0 && ca == 255) {
                posx = x * 50;
                posy = y * 50;
                console.log("te tengo en " + posx + "y" + posy)
            }

        }
    }
}



function creaenemigos() {

    var pixeles = contextomapapersonajes.getImageData(0, 0, 512, 512);
    for (var i = 0; i < pixeles.data.length; i += 4) {
        var cr = pixeles.data[i];
        var cg = pixeles.data[i + 1];
        var cb = pixeles.data[i + 2];
        var ca = pixeles.data[i + 3];
        var x = (((i) % (512)) / 4);
        var y = Math.floor((i / 512) / 4);
        if (ca == 255) {
            if (cr == 255 && cg == 0 && cb == 0 && ca == 255) {
                //console.log("creo un enemigo")
                arraypersonajes[numeropersonajes] = new Personaje;
                arraypersonajes[numeropersonajes].x = x * 50
                arraypersonajes[numeropersonajes].y = y * 50
                numeropersonajes++;
            }
        }

    }
}

function creaprops() {
    contextomapaprops.drawImage(mapaprops, 0, 0)
    //console.log("dibujo un prop")
    var pixeles = contextomapaprops.getImageData(0, 0, 512, 512);

    for (var i = 0; i < pixeles.data.length; i += 4) {
        var cr = pixeles.data[i];
        var cg = pixeles.data[i + 1];
        var cb = pixeles.data[i + 2];
        var ca = pixeles.data[i + 3];
        var x = (((i) % (512)) / 4);
        var y = Math.floor((i / 512) / 4);
        if (ca == 255) {
            if (cr == 255 && cg == 0 && cb == 0 && ca == 255) {
                //console.log("creo un prop")
                arrayprops[numeroprops] = new Props;
                arrayprops[numeroprops].x = x * 50
                arrayprops[numeroprops].y = y * 50
                arrayprops[numeroprops].z = contextomapa.getImageData(x, y, 1, 1).data[0]
                numeroprops++;
            }
        }

    }
}

function crearecogibles() {
    contextomaparecogibles.drawImage(maparecogibles, 0, 0)

    var pixeles = contextomaparecogibles.getImageData(0, 0, 512, 512);
    for (var i = 0; i < pixeles.data.length; i += 4) {
        var cr = pixeles.data[i];
        var cg = pixeles.data[i + 1];
        var cb = pixeles.data[i + 2];
        var ca = pixeles.data[i + 3];
        var x = (((i) % (512)) / 4);
        var y = Math.floor((i / 512) / 4);
        if (ca == 255) {
            if (cr == 255 && cg == 0 && cb == 0 & ca == 255) {
                //console.log("creo un recogi")
                arrayrecogibles[numerorecogibles] = new Recogibles;
                arrayrecogibles[numerorecogibles].x = x * 50
                arrayrecogibles[numerorecogibles].y = y * 50
                arrayprops[numerorecogibles].z = contextomapa.getImageData(x, y, 1, 1).data[0]
                numerorecogibles++;
            }
        }

    }
}

function creaobjetivo() {
    var pixeles = contextomapapersonajes.getImageData(0, 0, 512, 512);
    for (var i = 0; i < pixeles.data.length; i += 4) {
        var cr = pixeles.data[i];
        var cg = pixeles.data[i + 1];
        var cb = pixeles.data[i + 2];
        var ca = pixeles.data[i + 3];
        var x = (((i) % (512)) / 4);
        var y = Math.floor((i / 512) / 4);
        if (ca == 255) {
            if (cr == 0 && cg == 0 && cb == 255 & ca == 255) {
                premiox = x * 50
                premioy = y * 50;
            }
        }

    }
}

