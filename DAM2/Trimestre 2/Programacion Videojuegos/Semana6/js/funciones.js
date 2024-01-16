
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

function dibujaterreno(){
    contextofondo.clearRect(0,0,anchuranavegador,alturanavegador)
    var anchurabloque = 50;
    var anchuradibujo = 120;
    contextomapa.drawImage(mapa,0,0);
    var pixeles = contextomapa.getImageData(0,0,512,512);
    
    for(var i = 0;i<pixeles.data.length;i+=4){
        var cr = pixeles.data[i];
        var cg = pixeles.data[i+1];
        var cb = pixeles.data[i+2];
        var ca = pixeles.data[i+3];

        var x = (((i)%(512))/4);
        var y = Math.floor((i/512)/4);

        if(ca == 255){
            //console.log("Estos es una parte del terreno");
            //console.log(x+","+y);
            if(
                isox(x*anchurabloque,y*anchurabloque)+desfasex > -100
                &&
                isox(x*anchurabloque,y*anchurabloque)+desfasex < anchuranavegador
                &&
                isoy(x*anchurabloque,y*anchurabloque)+desfasey > -100
                &&
                isoy(x*anchurabloque,y*anchurabloque)+desfasey < alturanavegador
                
            ){
            contextofondo.drawImage(bloque9,
            isox(x*anchurabloque,y*anchurabloque)+desfasex,
            isoy(x*anchurabloque,y*anchurabloque)+desfasey,
            anchuradibujo,anchuradibujo
            );
        }
        }
    }
}

function posinicialjugador(){

    var pixeles = contextomapa.getImageData(0,0,512,512);
    
    for(var i = 0;i<pixeles.data.length;i+=4){
        var cr = pixeles.data[i];
        var cg = pixeles.data[i+1];
        var cb = pixeles.data[i+2];
        var ca = pixeles.data[i+3];

        var x = (((i)%(512))/4);
        var y = Math.floor((i/512)/4);

        if(ca == 255){
            if(cr == 0 && cg >= 20 && cb == 0 && ca == 255){
                posx = x*50;
                posy = y*50;
                console.log("te tengo en "+posx+"y"+posy)
            }
            
        }
    }
}

function creaenemigos(){
    
    var pixeles = contextomapa.getImageData(0,0,512,512);
   for(var i = 0;i<pixeles.data.length;i+=4){
       var cr = pixeles.data[i];
       var cg = pixeles.data[i+1];
       var cb = pixeles.data[i+2];
       var ca = pixeles.data[i+3];
       var x = (((i)%(512))/4);
       var y = Math.floor((i/512)/4);
       if(ca == 255){
          if(cr == 255 && cg == 0 && cb == 0 & ca == 255){
              console.log("creo un enemigo")
              arraypersonajes[numeropersonajes] = new Personaje;
              arraypersonajes[numeropersonajes].x = x*50
              arraypersonajes[numeropersonajes].y = y*50
              numeropersonajes++;
          }
       }
       
   }
}

function creaobjetivo(){
    var pixeles = contextomapa.getImageData(0,0,512,512);
   for(var i = 0;i<pixeles.data.length;i+=4){
       var cr = pixeles.data[i];
       var cg = pixeles.data[i+1];
       var cb = pixeles.data[i+2];
       var ca = pixeles.data[i+3];
       var x = (((i)%(512))/4);
       var y = Math.floor((i/512)/4);
       if(ca == 255){
          if(cr == 0 && cg == 0 && cb == 255 & ca == 255){
             premiox = x*50
              premioy = y*50;
          }
       }
       
   }
}