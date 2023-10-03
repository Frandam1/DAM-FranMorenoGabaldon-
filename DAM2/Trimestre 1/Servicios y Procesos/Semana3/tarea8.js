var id;
var otros;

onmessage = function(datos){
    id = datos.data.id;
    otros = datos.data.otros;
   
}
var temporizador;

inicio();

var posx = Math.random()*512;
var posy = Math.random()*512;

var cr = Math.round(Math.random()*256);
var cg = Math.round(Math.random()*256);
var cb = Math.round(Math.random()*256);
var tam = 2;

var direccion = Math.random()*Math.PI*2;
var velocidad = Math.random();


function inicio(){
    temporizador = setTimeout("bucle()",1000)
}

function colisionabordes(){
    if (posx < 0 || posx > 512 || posy < 0 || posy > 512){
        direccion += Math.PI;
    }
}
function mueve(){
    posx += Math.cos(direccion)*velocidad;
    posy += Math.sin(direccion)*velocidad;
}
function cambiadireccion(){
    direccion += (Math.random()-0.5)/4;
    posx += Math.cos(direccion)*velocidad*3;
    posy += Math.sin(direccion)*velocidad*3;
}
function evitarse(){
    for(var i = 0; i<otros.length;i++){
        var a = posx - otros[i].x;
        var b = posy - otros[i].y;
        var distancia = Math.sqrt(a+a + b+b);
        if(distancia < 25 && otros.id != id && distancia > 4){
            direccion += Math.PI;
            tam = 5;
        }
    }
}
function bucle(){
    tam = 2;
    colisionabordes();
    cambiadireccion();
    mueve();
    evitarse();
    postMessage({id:id,x:posx,y:posy,mir:cr,mig:cg,mib:cb,tam:tam})
    clearTimeout(temporizador)
    temporizador = setTimeout("bucle()",33)

}