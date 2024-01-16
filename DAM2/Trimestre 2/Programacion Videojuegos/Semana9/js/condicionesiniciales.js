

var contexto = document.getElementById("lienzo").getContext("2d");
var contextofondo = document.getElementById("lienzofondo").getContext("2d");
var contextomapapersonajes = document.getElementById("lienzomapapersonajes").getContext("2d");
var contextomapaprops = document.getElementById("lienzomapaprops").getContext("2d");
var contextomapaprops2 = document.getElementById("lienzomapaprops2").getContext("2d");
var contextomapaprops3 = document.getElementById("lienzomapaprops2").getContext("2d");
var contextomaparecogibles = document.getElementById("lienzomaparecogibles").getContext("2d");
var contextomapa = document.getElementById("lienzomapa").getContext("2d");
var contextomapacolores = document.getElementById("lienzomapacolores").getContext("2d");
var contextomapaarquitectura = document.getElementById("lienzomapaarquitectura").getContext("2d");


var contextopunto = document.getElementById("lienzopunto").getContext("2d");
pixelesmapa = contextomapa.getImageData(0,0,512,512);

contextopunto.fillStyle = "red";

// Variables globales del programa
var temporizador;
var anchuranavegador = window.innerWidth;
var alturanavegador = window.innerHeight;
// Altura y anchuras dinamicas

document.getElementById("lienzo").height = alturanavegador;
document.getElementById("lienzo").width = anchuranavegador;
document.getElementById("lienzofondo").height = alturanavegador;
document.getElementById("lienzofondo").width = anchuranavegador;
document.getElementById("fondo").height = alturanavegador;
document.getElementById("fondo").width = anchuranavegador;
document.getElementById("contenedor").height = alturanavegador;
document.getElementById("contenedor").width = anchuranavegador;
pixeles = contextomapa.getImageData(0,0,512,512);



// Imagenes del videojuego 

//var imagenrejilla = new Image();
//imagenrejilla.src = "rejilla3.jpg"
var imgPersonaje = new Image();

var imgPersonaje1 = new Image();
imgPersonaje1.src = "img/pj3.png"

var imgPersonaje2 = new Image();
imgPersonaje2.src = "img/pj2.png"

var imgPersonajeprota = new Image();
imgPersonajeprota.src = "img/prota.png"

var mapa = new Image();
mapa.src = "img/mapas2/mapa2.png"

var mapapersonajes = new Image();
mapapersonajes.src = "img/mapas2/mapa1personajes.png"

var mapaprops = new Image();
mapaprops.src = "img/mapas2/mapa1props.png"
var mapaprops2 = new Image();
mapaprops2.src = "img/mapas2/mapa2props.png"
var mapaprops3 = new Image();
mapaprops3.src = "img/mapas2/mapa3props.png"

var maparecogibles = new Image();
maparecogibles.src = "img/mapas2/mapa1recogibles.png"

var mapaarquitectura = new Image();
mapaarquitectura.src = "img/mapas2/mapa1arquitectura.png"

var bloque9 = new Image();
bloque9.src = "img/terreno/terreno9.png"

var mapacolores = new Image();
mapacolores.src = "img/mapas/mapa1colores.png"

var bloquepavimento = new Image();bloquepavimento.src = "img/terreno/pavimento.png"
var bloqueacera = new Image();bloqueacera.src = "img/terreno/acera.png"
var bloqueasfalto = new Image();bloqueasfalto.src = "img/terreno/asfalto.png"
var bloquejardin = new Image();bloquejardin.src = "img/terreno/jardin.png"
var bloquepavimentocasa = new Image();bloquepavimentocasa.src = "img/terreno/pavimentocasa.png"
var bloquevallajardin = new Image();bloquevallajardin.src = "img/terreno/vallajardin.png"

var sur = new Image();sur.src = "img/mapas2/sur.png"
var oeste = new Image();oeste.src = "img/mapas2/oeste.png"
var norte = new Image();norte.src = "img/mapas2/norte.png"
var este = new Image();este.src = "img/mapas2/este.png"

var bloquearquitectura1 = new Image();bloquearquitectura1.src = "img/mapas2/simple1.png"
var bloquearquitectura2 = new Image();bloquearquitectura2.src = "img/mapas2/simple2.png"




var imgPremio = new Image();
imgPremio.src = "img/premio.png"

var imgRecogible1 = new Image();
imgRecogible1.src = "img/mapas2/pocion.png"

var imgRecogible2 = new Image();
imgRecogible2.src = "img/mapas2/pocion2.png"

var imgRecogible3 = new Image();
imgRecogible3.src = "img/mapas2/pocion3.png"

var imgProp1 = new Image();
imgProp1.src = "img/mapas2/simple2.png"

var imgAccion = new Image();
imgAccion.src = "img/movimiento.png"


var numeropersonajes = 0;
var arraypersonajes = new Array();

var numeroprops = 0;
var arrayprops = new Array();

var numerorecogibles = 0;
var arrayrecogibles = new Array();

//Propiedades prota

var posx = 1000;
var posy =80;
var posz = 0;
var velocidadz = 1;
var estadoanim = 0;
var angulo = 0;
var velocidad = 10;
var direccion= 0;
var energia = 100;
var moviendo = false
var saltopersonaje = 0
var saltando = false
var accion = false


// Delimitacion de terreno

var terrenox1 = 600;
var terrenoy1 = -400;
var terrenox2 = 1400;
var terrenoy2 = 450; 

var premiox = 800;
var premioy = 300;


var anchoNuevo = 50;
var altoNuevo = 50;

var nivel = 1;

var pausa = false;

var desfasex = 220;
var desfasey = 220;
var velocidaddesfase = 1;

var alturabloquez = 5
var alturabloquez2 = 10