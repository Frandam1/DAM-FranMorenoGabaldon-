

var contexto = document.getElementById("lienzo").getContext("2d");

// Variables globales del programa
var temporizador;
var anchuranavegador = window.innerWidth;
var alturanavegador = window.innerHeight;
// Altura y anchuras dinamicas

document.getElementById("lienzo").height = alturanavegador;
document.getElementById("lienzo").width = anchuranavegador;
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

var numeropersonajes = 50;
var arraypersonajes = new Array();

//Propiedades prota

var posx = 800;
var posy =-60;
var estadoanim = 0;
var angulo = 0;
var velocidad = 10;
var direccion= 0;

// Delimitacion de terreno

var terrenox1 = 600;
var terrenoy1 = -400;
var terrenox2 = 1400;
var terrenoy2 = 450; 



