 /* Capturamos el lienzo y lo introducimos dentro de una variable contexto */
var contexto = document.getElementById("lienzo").getContext("2d");
var contextofondo = document.getElementById("lienzofondo").getContext("2d");
var contextomapa = document.getElementById("lienzomapa").getContext("2d");
var contextomapacolores = document.getElementById("lienzomapacolores").getContext("2d");
var contextomapaarquitectura = document.getElementById("lienzomapaarquitectura").getContext("2d");
var contextomapapersonajes = document.getElementById("lienzomapapersonajes").getContext("2d");
var contextomapaprops = document.getElementById("lienzomapaprops").getContext("2d");
var contextomapatechos = document.getElementById("lienzomapatechos").getContext("2d");
var contextomaparecogibles = document.getElementById("lienzomaparecogibles").getContext("2d");
var contextopunto = document.getElementById("lienzopunto").getContext("2d");
pixelesmapa = contextomapa.getImageData(0,0,512,512);
var pixeles;
contextopunto.fillStyle = "red";
/* Aquí voy a declarar las variables globales a todo el programa */
var temporizador;
var anchuranavegador = window.innerWidth;
var alturanavegador = window.innerHeight;
document.getElementById("lienzo").height = alturanavegador;
document.getElementById("lienzo").width = anchuranavegador;
document.getElementById("lienzofondo").height = alturanavegador;
document.getElementById("lienzofondo").width = anchuranavegador;
document.getElementById("fondo").height = alturanavegador;
document.getElementById("fondo").width = anchuranavegador;
document.getElementById("contenedor").height = alturanavegador;
document.getElementById("contenedor").width = anchuranavegador;

/* En esta zona cargamos las imágenes que vamos a utilizar en el videojuego */
var imagennpc = new Image();
var imagennpc1 = new Image();
imagennpc1.src = "img/personajes/personaje.png";
var imagennpc2 = new Image();
imagennpc2.src = "img/personajes/personajeverde.png";
var imagennpc3 = new Image();
imagennpc3.src = "img/personajes/personajeazul.png";
var imagennpc4 = new Image();
imagennpc4.src = "img/personajes/personajeamarillo.png";
var imagennpc5 = new Image();
imagennpc5.src = "img/personajes/personajecyan.png";
var imagennpc6 = new Image();
imagennpc6.src = "img/personajes/personajemagenta.png";



var imagenpersonaje = new Image();
imagenpersonaje.src = "img/personajes/personaje.png";

var imagenpersonajeaccion = new Image();
imagenpersonajeaccion.src = "img/personajes/personajeaccion.png";

var mapa = new Image();
mapa.src = "img/mapas/mapa1colores.png";

var mapacolores = new Image();
mapacolores.src = "img/mapas/mapa1colores.png";

var mapaarquitectura = new Image();
mapaarquitectura.src = "img/mapas/mapa1arquitectura.png";

var mapatechos = new Image();
mapatechos.src = "img/mapas/mapa1techos.png";

var mapapersonajes = new Image();
mapapersonajes.src = "img/mapas/personajes.png";

var maparecogibles = new Image();
maparecogibles.src = "img/mapas/mapa1recogibles.png";

var mapaprops = new Image();
mapaprops.src = "img/mapas/mapa1props.png";

var bloque9 = new Image();bloque9.src = "img/terreno/terreno9.png";

var bloqueacera = new Image();bloqueacera.src = "img/terreno/acera.png";
var bloqueasfalto = new Image();bloqueasfalto.src = "img/terreno/asfalto.png";
var bloquejardin = new Image();bloquejardin.src = "img/terreno/jardin.png";
var bloquepavimento = new Image();bloquepavimento.src = "img/terreno/pavimento.png";
var bloquepavimentocasa = new Image();bloquepavimentocasa.src = "img/terreno/pavimentocasa.png";
var bloquevallajardin = new Image();bloquevallajardin.src = "img/terreno/vallajardin.png";

var bloquearquitecturasimple1 = new Image();bloquearquitecturasimple1.src = "img/arquitectura/simple1.png";
var bloquearquitecturasimple2 = new Image();bloquearquitecturasimple2.src = "img/arquitectura/simple2.png";

var bloquearquitecturax = new Image();bloquearquitecturax.src = "img/arquitectura/cruz.png";

var bloquearquitectural1 = new Image();bloquearquitectural1.src = "img/arquitectura/l1.png";
var bloquearquitectural2 = new Image();bloquearquitectural2.src = "img/arquitectura/l2.png";
var bloquearquitectural3 = new Image();bloquearquitectural3.src = "img/arquitectura/l3.png";
var bloquearquitectural4 = new Image();bloquearquitectural4.src = "img/arquitectura/l4.png";

var bloquearquitecturat1 = new Image();bloquearquitecturat1.src = "img/arquitectura/t1.png";
var bloquearquitecturat2 = new Image();bloquearquitecturat2.src = "img/arquitectura/t2.png";
var bloquearquitecturat3 = new Image();bloquearquitecturat3.src = "img/arquitectura/t3.png";
var bloquearquitecturat4 = new Image();bloquearquitecturat4.src = "img/arquitectura/t4.png";
var bloquearquitecturaventana1 = new Image();bloquearquitecturaventana1.src = "img/arquitectura/ventana1.png";
var bloquearquitecturaventana2 = new Image();bloquearquitecturaventana2.src = "img/arquitectura/ventana2.png";

var bloquearquitecturasimple1a = new Image();bloquearquitecturasimple1a.src = "img/arquitectura/simple1-1.png";
var bloquearquitecturasimple2a = new Image();bloquearquitecturasimple2a.src = "img/arquitectura/simple2-1.png";

var bloquearquitecturaxa = new Image();bloquearquitecturaxa.src = "img/arquitectura/cruz-1.png";

var bloquearquitectural1a = new Image();bloquearquitectural1a.src = "img/arquitectura/l1-1.png";
var bloquearquitectural2a = new Image();bloquearquitectural2a.src = "img/arquitectura/l2-1.png";
var bloquearquitectural3a = new Image();bloquearquitectural3a.src = "img/arquitectura/l3-1.png";
var bloquearquitectural4a = new Image();bloquearquitectural4a.src = "img/arquitectura/l4-1.png";

var bloquearquitecturat1a = new Image();bloquearquitecturat1a.src = "img/arquitectura/t1-1.png";
var bloquearquitecturat2a = new Image();bloquearquitecturat2a.src = "img/arquitectura/t2-1.png";
var bloquearquitecturat3a = new Image();bloquearquitecturat3a.src = "img/arquitectura/t3-1.png";
var bloquearquitecturat4a = new Image();bloquearquitecturat4a.src = "img/arquitectura/t4-1.png";
var bloquearquitecturaventana1a = new Image();bloquearquitecturaventana1a.src = "img/arquitectura/ventana1-1.png";
var bloquearquitecturaventana2a = new Image();bloquearquitecturaventana2a.src = "img/arquitectura/ventana2-1.png";

var bloquetecho = new Image();bloquetecho.src = "img/arquitectura/techo.png";

var imagenpremio = new Image();
imagenpremio.src = "img/items/premio.png";

var imagenrecogible1 = new Image();
imagenrecogible1.src = "img/recogibles/pocion.png";
var imagenrecogible2 = new Image();
imagenrecogible2.src = "img/recogibles/pocion2.png";
var imagenrecogible3 = new Image();
imagenrecogible3.src = "img/recogibles/pocion3.png";

var imagenprop1 = new Image();
imagenprop1.src = "img/props/prop1.png";

/* Introduzco la lista de los personajes */
var numeropersonajes = 0;
var arraypersonajes = new Array();

var numeroprops = 0;
var arrayprops = new Array();

var numerorecogibles = 0;
var arrayrecogibles = new Array();

// Propiedades protagonista
var posx = 1000;
var posy = 200;
var posz = 0;
var velocidadz = 1;
var estadoanimacion = 0;
var angulo = 0;
var velocidad = 5;
var direccion = 0;
var energia = 100;
var moviendo = false;
var saltopersonaje = 0;
var velocidadz = 0;
var saltando = false;
accion = false;

/* Aquí introducimos las coordenadas mínimas y máximas del terreno en el cual se van a mover los N PC */
var terrenox1 = 600;
var terrenoy1 = -300;
var terrenox2 = 1400;
var terrenoy2 = 500;

var premiox = 800;
var premioy = 400;

var nivel = 1;


var pausa = false;


var desfasex = 420;
var desfasey = 0;

var velocidaddesfase = 3;


var alturabloquez = 1;








