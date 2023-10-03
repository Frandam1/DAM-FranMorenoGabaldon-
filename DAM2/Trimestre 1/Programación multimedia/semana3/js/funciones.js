
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

    nivel ++;
    $("#dimenivel").html(nivel);
    $("#pantallanivel").fadeIn("slow")
    contexto.clearRect(0, 0, anchuranavegador, alturanavegador);
    setTimeout(function(){
        $("#pantallanivel").fadeOut("slow")
        pausa=false;
        bucle();
        
    },2500)
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

    premiox = Math.random()*(terrenox2-terrenox1)+terrenox1;
    premioy = Math.random()*(terrenoy2-terrenoy1)+terrenoy1;
    
}