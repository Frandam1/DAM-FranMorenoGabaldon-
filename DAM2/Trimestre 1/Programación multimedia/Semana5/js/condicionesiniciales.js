

var contexto = document.getElementById("lienzo").getContext("2d");
var contextofondo = document.getElementById("lienzofondo").getContext("2d");
var contextomapa = document.getElementById("lienzomapa").getContext("2d");
var contextopunto = document.getElementById("lienzopunto").getContext("2d");

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



// Imagenes del videojuego 

//var imagenrejilla = new Image();
//imagenrejilla.src = "rejilla3.jpg"

var imgPersonaje1 = new Image();
imgPersonaje1.src = "img/pj2.png"

var imgPersonaje = new Image();
imgPersonaje.src = "img/prota.png"

var mapa = new Image();
mapa.src = "img/mapas2/mapa1.png"

var bloque9 = new Image();
bloque9.src = "img/terreno/terreno9.png"


var imgPremio = new Image();
imgPremio.src = "img/premio.png"


var numeropersonajes = 5;
var arraypersonajes = new Array();

//Propiedades prota

var posx = 1000;
var posy =80;
var estadoanim = 0;
var angulo = 0;
var velocidad = 10;
var direccion= 0;
var energia = 100;

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