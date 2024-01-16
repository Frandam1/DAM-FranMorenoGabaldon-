var id;
var otros;
var comida;

onmessage = function (datos) {
    id = datos.data.id;
    otros = datos.data.otros;
    comida = datos.data.comida;

}
var temporizador;

inicio();

var posx = Math.random() * 512;
var posy = Math.random() * 512;

var cr = Math.round(Math.random() * 256);
var cg = Math.round(Math.random() * 256);
var cb = Math.round(Math.random() * 256);
var tam = 2;

var direccion = Math.random() * Math.PI * 2;
var velocidad = Math.random();

var energia = 100;
var hambre = 0;
var muerto = false;
var dormido = false;
var hambriento = false;

function inicio() {
    temporizador = setTimeout("bucle()", 1000)
}

function colisionabordes() {
    if (posx < 0 || posx > 512 || posy < 0 || posy > 512) {
        direccion += Math.PI;
    }
}
function mueve() {

    posx += Math.cos(direccion) * velocidad;
    posy += Math.sin(direccion) * velocidad;
    energia--;
    hambre++;
}
function buscocomida() {
    if (hambriento == true) {
        console.log("A comer")
        for (var i = 0; i < comida.length; i++) {
            var a = posx - comida[i].x;
            var b = posy - comida[i].y;
            distancia = Math.sqrt(a * a + b * b);
            if (distancia < 60) {
                var angleRadians = Math.atan2(comida[i].y - posy, comida[i].x - posx);
                direccion = angleRadians;
                if (distancia < 10) {
                    hambre--;
                }
            }
        }
    }
}
function como() {

}
function cambiadireccion() {
    direccion += (Math.random() - 0.5) / 4;
    posx += Math.cos(direccion) * velocidad * 3;
    posy += Math.sin(direccion) * velocidad * 3;
}
function evitarse() {
    for (var i = 0; i < otros.length; i++) {
        var a = posx - otros[i].x;
        var b = posy - otros[i].y;
        var distancia = Math.sqrt(a * a + b * b);
        if (distancia < 25 && otros.id != id && distancia > 4) {
            direccion += Math.PI;
            tam = 5;
        }
    }
}
function duerme() {
    energia += 0.2;
    hambre += 0.2;

}
function muerte() {
    if (hambre > 100) {
        muerto = true;
        cr = 0;
        cb = 0;
        cg = 0;
        //tam = energia*10;
    }
}
function bucle() {
    //if(hambre < 0){hambre=0}
    if(energia>100){energia=10}
    if (muerto == false) {
        tam = energia / 10;
        colisionabordes();
        cambiadireccion();
        buscocomida();

        if (energia < 20) {
            dormido = true;
        }

        if (dormido == true) {
            duerme();
        }
        if (energia > 80) {
            dormido = false;
        }
        if (dormido == false) {
            mueve();
        }
        if (hambre > 80) {
            hambriento = true;
        }
        if (hambre < 20) {
            hambriento = false;
        }

        muerte();
        //evitarse();
    }
    postMessage({ id: id, x: posx, y: posy, mir: cr, mig: cg, mib: cb, tam: tam })
    clearTimeout(temporizador)
    temporizador = setTimeout("bucle()", 33)

}