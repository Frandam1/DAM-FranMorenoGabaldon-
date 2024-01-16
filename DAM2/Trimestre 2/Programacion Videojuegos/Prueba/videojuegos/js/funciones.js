function isox(x,y){
    return(x-y);
}
function isoy(x,y){
    return((x+y)/2);
}

function reiniciar(){
    /* Introduzco la lista de los personajes */
    
    nivel = 1;
    numeropersonajes = 5;
    arraypersonajes = new Array();

    // Propiedades protagonista
    posx = 1000;
    posy = 200;
    estadoanimacion = 0;
    angulo = 0;
    velocidad = 5;
    direccion = 0;
    energia = 100;

    /* Aquí introducimos las coordenadas mínimas y máximas del terreno en el cual se van a mover los N PC */
    terrenox1 = 600;
    terrenoy1 = -200;
    terrenox2 = 1400;
    terrenoy2 = 600;

    pausa = false;
    
    for(var i = 0;i<numeropersonajes;i++){
        arraypersonajes[i] = new Personaje;
    }
    
}

function subirnivel(){
    pausa = true;
    
    
    
    nivel++;
    $("#dimenivel").html(nivel)
    $("#pantallanivel").fadeIn("slow")
    contexto.clearRect(0,0,anchuranavegador,alturanavegador);
    setTimeout(function(){
         $("#pantallanivel").fadeOut("slow")
        pausa = false;
        bucle();
       
    },5000)
    /* Introduzco la lista de los personajes */
    numeropersonajes += 5;
    arraypersonajes = new Array();

    // Propiedades protagonista
    posx = 1000;
    posy = 200;
    estadoanimacion = 0;
    angulo = 0;
    velocidad = 5;
    direccion = 0;
    energia = 100;

    /* Aquí introducimos las coordenadas mínimas y máximas del terreno en el cual se van a mover los N PC */
    terrenox1 = 600;
    terrenoy1 = -200;
    terrenox2 = 1400;
    terrenoy2 = 600;

    //pausa = false;
    
    
    for(var i = 0;i<numeropersonajes;i++){
        arraypersonajes[i] = new Personaje;
    }
    
    premiox = Math.random()*(terrenox2-terrenox1)+terrenox1;
    premioy = Math.random()*(terrenoy2-terrenoy1)+terrenoy1;
}


function dibujaterreno(){
    contextofondo.clearRect(0,0,anchuranavegador,alturanavegador)
    var anchurabloque = 50;
    var anchuradibujo = 120;
    
    pixeles = contextomapa.getImageData(0,0,512,512);
    
    
    for(var i = 0;i<pixeles.data.length;i+=4){
        var cr = pixeles.data[i];
        var cg = pixeles.data[i+1];
        var cb = pixeles.data[i+2];
        var ca = pixeles.data[i+3];
        var x = (((i)%(512))/4);
        var y = Math.floor((i/512)/4);
        if(ca == 255){
            
           if(
               isox(x*anchurabloque,y*anchurabloque)+desfasex > -100
                &&
               isox(x*anchurabloque,y*anchurabloque)+desfasex < anchuranavegador
               &&
               isoy(x*anchurabloque,y*anchurabloque)+desfasey > -100
               &&
               isoy(x*anchurabloque,y*anchurabloque)+desfasey < alturanavegador
           ){ 
               var array = contextomapacolores.getImageData(x,y,1,1).data
               
               if(array[0] == 42 && array[1] == 42 && array[2] == 42 ){
                   contextofondo.drawImage(
                       bloqueasfalto,
                       isox(x*anchurabloque,y*anchurabloque)+desfasex,
                       isoy(x*anchurabloque,y*anchurabloque)+desfasey-pixeles.data[i]*alturabloquez,
                       anchuradibujo,
                       anchuradibujo
                    );
               }
            if(array[0] == 67 && array[1] == 66 && array[2] == 66 ){
                   contextofondo.drawImage(
                       bloqueacera,
                       isox(x*anchurabloque,y*anchurabloque)+desfasex,
                       isoy(x*anchurabloque,y*anchurabloque)+desfasey-pixeles.data[i]*alturabloquez,
                       anchuradibujo,
                       anchuradibujo
                    );
               }
                if(array[0] == 90 && array[1] == 90 && array[2] == 90 ){
                   contextofondo.drawImage(
                       bloquepavimento,
                       isox(x*anchurabloque,y*anchurabloque)+desfasex,
                       isoy(x*anchurabloque,y*anchurabloque)+desfasey-pixeles.data[i]*alturabloquez,
                       anchuradibujo,
                       anchuradibujo
                    );
               }
                if(array[0] == 138 && array[1] == 138 && array[2] == 138 ){
                   contextofondo.drawImage(
                       bloquepavimentocasa,
                       isox(x*anchurabloque,y*anchurabloque)+desfasex,
                       isoy(x*anchurabloque,y*anchurabloque)+desfasey-pixeles.data[i]*alturabloquez,
                       anchuradibujo,
                       anchuradibujo
                    );
               }
                if(array[0] == 65 && array[1] == 96 && array[2] == 54 ){
                   contextofondo.drawImage(
                       bloquejardin,
                       isox(x*anchurabloque,y*anchurabloque)+desfasex,
                       isoy(x*anchurabloque,y*anchurabloque)+desfasey-pixeles.data[i]*alturabloquez,
                       anchuradibujo,
                       anchuradibujo
                    );
               }
               if(array[0] == 111 && array[1] == 133  && array[2] == 104 ){
                   contextofondo.drawImage(
                       bloquevallajardin,
                       isox(x*anchurabloque,y*anchurabloque)+desfasex,
                       isoy(x*anchurabloque,y*anchurabloque)+desfasey-pixeles.data[i]*alturabloquez,
                       anchuradibujo,
                       anchuradibujo
                    );
               }
               
               
              
               
               var coge = contextomapaarquitectura.getImageData(x-1,y-1,3,3).data
               var centro = coge[19];
               var centror = coge[16];
               var centrog = coge[17];
               var centrob = coge[18];
               var arriba = coge[7];
               var abajo = coge[31];
               var derecha = coge[23];
               var izquierda = coge[15];
               
               if(centro == 255){
                  // Bloque en X
                   if(arriba == 255 && abajo == 255 && izquierda == 255 && derecha == 255)  {
                       if(
                        (isox(x*anchurabloque,y*anchurabloque)+desfasex < anchuranavegador*0.25
                           ||
                        isox(x*anchurabloque,y*anchurabloque)+desfasex > anchuranavegador*0.75)
                        &&
                           (isoy(x*anchurabloque,y*anchurabloque)+desfasey-pixeles.data[i]*alturabloquez-300 < alturanavegador * 0.25
                           || 
                           isoy(x*anchurabloque,y*anchurabloque)+desfasey-pixeles.data[i]*alturabloquez-300 > alturanavegador * 0.75)
                       ){
                       contextofondo.drawImage(
                           bloquearquitecturaxa,
                          isox(x*anchurabloque,y*anchurabloque)+desfasex,
                           isoy(x*anchurabloque,y*anchurabloque)+desfasey-pixeles.data[i]*alturabloquez-300,
                           anchuradibujo,
                           anchuradibujo*3
                        ); 
                       }
                           else{
                               contextofondo.drawImage(
                           bloquearquitecturax,
                          isox(x*anchurabloque,y*anchurabloque)+desfasex,
                           isoy(x*anchurabloque,y*anchurabloque)+desfasey-pixeles.data[i]*alturabloquez-300,
                           anchuradibujo,
                           anchuradibujo*3
                        ); 
                           }
                   }
                   // Bloques simples
                   if(arriba == 255 && abajo == 255 && izquierda == 0 && derecha == 0 &&
                     (centror == 255 && centrog == 255 && centrob == 255)
                     )  {
                       if(
                         (isox(x*anchurabloque,y*anchurabloque)+desfasex < anchuranavegador*0.25
                           ||
                        isox(x*anchurabloque,y*anchurabloque)+desfasex > anchuranavegador*0.75)
                        &&
                           (isoy(x*anchurabloque,y*anchurabloque)+desfasey-pixeles.data[i]*alturabloquez+400 < alturanavegador * 0.25
                           || 
                           isoy(x*anchurabloque,y*anchurabloque)+desfasey-pixeles.data[i]*alturabloquez+400 > alturanavegador * 0.75)
                       ){
                       contextofondo.drawImage(
                           bloquearquitecturasimple1a,
                          isox(x*anchurabloque,y*anchurabloque)+desfasex,
                           isoy(x*anchurabloque,y*anchurabloque)+desfasey-pixeles.data[i]*alturabloquez-300,
                           anchuradibujo,
                           anchuradibujo*3
                        ); 
                             }
                           else{
                               contextofondo.drawImage(
                           bloquearquitecturasimple1,
                          isox(x*anchurabloque,y*anchurabloque)+desfasex,
                           isoy(x*anchurabloque,y*anchurabloque)+desfasey-pixeles.data[i]*alturabloquez-300,
                           anchuradibujo,
                           anchuradibujo*3
                        ); 
                           }
                   }
                   if(arriba == 0 && abajo == 0 && izquierda == 255 && derecha == 255 &&
                     (centror == 255 && centrog == 255 && centrob == 255))  {
                       if(
                          (isox(x*anchurabloque,y*anchurabloque)+desfasex < anchuranavegador*0.25
                           ||
                        isox(x*anchurabloque,y*anchurabloque)+desfasex > anchuranavegador*0.75)
                        &&
                           (isoy(x*anchurabloque,y*anchurabloque)+desfasey-pixeles.data[i]*alturabloquez+400 < alturanavegador * 0.25
                           || 
                           isoy(x*anchurabloque,y*anchurabloque)+desfasey-pixeles.data[i]*alturabloquez+400 > alturanavegador * 0.75)
                       ){
                       contextofondo.drawImage(
                           bloquearquitecturasimple2a,
                          isox(x*anchurabloque,y*anchurabloque)+desfasex,
                           isoy(x*anchurabloque,y*anchurabloque)+desfasey-pixeles.data[i]*alturabloquez-300,
                           anchuradibujo,
                           anchuradibujo*3
                        ); 
                             }
                           else{
                                contextofondo.drawImage(
                           bloquearquitecturasimple2,
                          isox(x*anchurabloque,y*anchurabloque)+desfasex,
                           isoy(x*anchurabloque,y*anchurabloque)+desfasey-pixeles.data[i]*alturabloquez-300,
                           anchuradibujo,
                           anchuradibujo*3
                        ); 
                           }
                   }
                
                   // Ventana
                   if(arriba == 255 && abajo == 255 && izquierda == 0 && derecha == 0 && centror == 0 && centrog == 255 && centrob == 0)  {
                       if(
                        (isox(x*anchurabloque,y*anchurabloque)+desfasex < anchuranavegador*0.25
                           ||
                        isox(x*anchurabloque,y*anchurabloque)+desfasex > anchuranavegador*0.75)
                        &&
                           (isoy(x*anchurabloque,y*anchurabloque)+desfasey-pixeles.data[i]*alturabloquez-300 < alturanavegador * 0.25
                           || 
                           isoy(x*anchurabloque,y*anchurabloque)+desfasey-pixeles.data[i]*alturabloquez-300 > alturanavegador * 0.75)
                       ){
                       contextofondo.drawImage(
                           bloquearquitecturaventana1a,
                          isox(x*anchurabloque,y*anchurabloque)+desfasex,
                           isoy(x*anchurabloque,y*anchurabloque)+desfasey-pixeles.data[i]*alturabloquez-300,
                           anchuradibujo,
                           anchuradibujo*3
                        ); 
                             }
                           else{
                                contextofondo.drawImage(
                           bloquearquitecturaventana1,
                          isox(x*anchurabloque,y*anchurabloque)+desfasex,
                           isoy(x*anchurabloque,y*anchurabloque)+desfasey-pixeles.data[i]*alturabloquez-300,
                           anchuradibujo,
                           anchuradibujo*3
                        ); 
                           }
                   }
                   if(arriba == 0 && abajo == 0 && izquierda == 255 && derecha == 255 && centror == 0 && centrog == 255 && centrob == 0)  {
                       if(
                         (isox(x*anchurabloque,y*anchurabloque)+desfasex < anchuranavegador*0.25
                           ||
                        isox(x*anchurabloque,y*anchurabloque)+desfasex > anchuranavegador*0.75)
                        &&
                           (isoy(x*anchurabloque,y*anchurabloque)+desfasey-pixeles.data[i]*alturabloquez-300 < alturanavegador * 0.25
                           || 
                           isoy(x*anchurabloque,y*anchurabloque)+desfasey-pixeles.data[i]*alturabloquez-300 > alturanavegador * 0.75)
                       ){
                       contextofondo.drawImage(
                           bloquearquitecturaventana2a,
                          isox(x*anchurabloque,y*anchurabloque)+desfasex,
                           isoy(x*anchurabloque,y*anchurabloque)+desfasey-pixeles.data[i]*alturabloquez-300,
                           anchuradibujo,
                           anchuradibujo*3
                        ); 
                             }
                           else{
                               contextofondo.drawImage(
                           bloquearquitecturaventana2,
                          isox(x*anchurabloque,y*anchurabloque)+desfasex,
                           isoy(x*anchurabloque,y*anchurabloque)+desfasey-pixeles.data[i]*alturabloquez-300,
                           anchuradibujo,
                           anchuradibujo*3
                        ); 
                           }
                   }
                   /*
                   
                   if(arriba == 0 && abajo == 0 && izquierda == 255 && derecha == 255)  {
                       if(
                         (isox(x*anchurabloque,y*anchurabloque)+desfasex < anchuranavegador*0.25
                           ||
                        isox(x*anchurabloque,y*anchurabloque)+desfasex > anchuranavegador*0.75)
                        &&
                           (isoy(x*anchurabloque,y*anchurabloque)+desfasey-pixeles.data[i]*alturabloquez-300 < alturanavegador * 0.25
                           || 
                           isoy(x*anchurabloque,y*anchurabloque)+desfasey-pixeles.data[i]*alturabloquez-300 > alturanavegador * 0.75)
                       ){
                       contextofondo.drawImage(
                           bloquearquitecturasimple2a,
                          isox(x*anchurabloque,y*anchurabloque)+desfasex,
                           isoy(x*anchurabloque,y*anchurabloque)+desfasey-pixeles.data[i]*alturabloquez-300,
                           anchuradibujo,
                           anchuradibujo*3
                        ); 
                             }
                           else{
                                contextofondo.drawImage(
                           bloquearquitecturasimple2,
                          isox(x*anchurabloque,y*anchurabloque)+desfasex,
                           isoy(x*anchurabloque,y*anchurabloque)+desfasey-pixeles.data[i]*alturabloquez-300,
                           anchuradibujo,
                           anchuradibujo*3
                        ); 
                           }
                   }
                   */
                   // T
                   if(arriba == 255 && abajo == 255 && izquierda == 255 && derecha == 0)  {
                       if(
                         (isox(x*anchurabloque,y*anchurabloque)+desfasex < anchuranavegador*0.25
                           ||
                        isox(x*anchurabloque,y*anchurabloque)+desfasex > anchuranavegador*0.75)
                        &&
                           (isoy(x*anchurabloque,y*anchurabloque)+desfasey-pixeles.data[i]*alturabloquez-300 < alturanavegador * 0.25
                           || 
                           isoy(x*anchurabloque,y*anchurabloque)+desfasey-pixeles.data[i]*alturabloquez-300 > alturanavegador * 0.75)
                       ){
                       contextofondo.drawImage(
                           bloquearquitecturat4a,
                          isox(x*anchurabloque,y*anchurabloque)+desfasex,
                           isoy(x*anchurabloque,y*anchurabloque)+desfasey-pixeles.data[i]*alturabloquez-300,
                           anchuradibujo,
                           anchuradibujo*3
                        ); 
                             }
                           else{
                                contextofondo.drawImage(
                           bloquearquitecturat4,
                          isox(x*anchurabloque,y*anchurabloque)+desfasex,
                           isoy(x*anchurabloque,y*anchurabloque)+desfasey-pixeles.data[i]*alturabloquez-300,
                           anchuradibujo,
                           anchuradibujo*3
                        ); 
                           }
                   }
                   if(arriba == 255 && abajo == 0 && izquierda == 255 && derecha == 255)  {
                       if(
                        (isox(x*anchurabloque,y*anchurabloque)+desfasex < anchuranavegador*0.25
                           ||
                        isox(x*anchurabloque,y*anchurabloque)+desfasex > anchuranavegador*0.75)
                        &&
                           (isoy(x*anchurabloque,y*anchurabloque)+desfasey-pixeles.data[i]*alturabloquez-300 < alturanavegador * 0.25
                           || 
                           isoy(x*anchurabloque,y*anchurabloque)+desfasey-pixeles.data[i]*alturabloquez-300 > alturanavegador * 0.75)
                       ){
                       contextofondo.drawImage(
                           bloquearquitecturat3a,
                          isox(x*anchurabloque,y*anchurabloque)+desfasex,
                           isoy(x*anchurabloque,y*anchurabloque)+desfasey-pixeles.data[i]*alturabloquez-300,
                           anchuradibujo,
                           anchuradibujo*3
                        ); 
                             }
                           else{
                                contextofondo.drawImage(
                           bloquearquitecturat3,
                          isox(x*anchurabloque,y*anchurabloque)+desfasex,
                           isoy(x*anchurabloque,y*anchurabloque)+desfasey-pixeles.data[i]*alturabloquez-300,
                           anchuradibujo,
                           anchuradibujo*3
                        ); 
                           }
                   }
                    if(arriba == 0 && abajo == 255 && izquierda == 255 && derecha == 255)  {
                        if(
                         (isox(x*anchurabloque,y*anchurabloque)+desfasex < anchuranavegador*0.25
                           ||
                        isox(x*anchurabloque,y*anchurabloque)+desfasex > anchuranavegador*0.75)
                        &&
                           (isoy(x*anchurabloque,y*anchurabloque)+desfasey-pixeles.data[i]*alturabloquez-300 < alturanavegador * 0.25
                           || 
                           isoy(x*anchurabloque,y*anchurabloque)+desfasey-pixeles.data[i]*alturabloquez-300 > alturanavegador * 0.75)
                       ){
                       contextofondo.drawImage(
                           bloquearquitecturat1a,
                          isox(x*anchurabloque,y*anchurabloque)+desfasex,
                           isoy(x*anchurabloque,y*anchurabloque)+desfasey-pixeles.data[i]*alturabloquez-300,
                           anchuradibujo,
                           anchuradibujo*3
                        ); 
                              }
                           else{
                                contextofondo.drawImage(
                           bloquearquitecturat1,
                          isox(x*anchurabloque,y*anchurabloque)+desfasex,
                           isoy(x*anchurabloque,y*anchurabloque)+desfasey-pixeles.data[i]*alturabloquez-300,
                           anchuradibujo,
                           anchuradibujo*3
                        ); 
                           }
                   }
                   if(arriba == 255 && abajo == 255 && izquierda == 0 && derecha == 255)  {
                       if(
                         (isox(x*anchurabloque,y*anchurabloque)+desfasex < anchuranavegador*0.25
                           ||
                        isox(x*anchurabloque,y*anchurabloque)+desfasex > anchuranavegador*0.75)
                        &&
                           (isoy(x*anchurabloque,y*anchurabloque)+desfasey-pixeles.data[i]*alturabloquez-300 < alturanavegador * 0.25
                           || 
                           isoy(x*anchurabloque,y*anchurabloque)+desfasey-pixeles.data[i]*alturabloquez-300 > alturanavegador * 0.75)
                       ){
                       contextofondo.drawImage(
                           bloquearquitecturat2a,
                          isox(x*anchurabloque,y*anchurabloque)+desfasex,
                           isoy(x*anchurabloque,y*anchurabloque)+desfasey-pixeles.data[i]*alturabloquez-300,
                           anchuradibujo,
                           anchuradibujo*3
                        ); 
                             }
                           else{
                               contextofondo.drawImage(
                           bloquearquitecturat2,
                          isox(x*anchurabloque,y*anchurabloque)+desfasex,
                           isoy(x*anchurabloque,y*anchurabloque)+desfasey-pixeles.data[i]*alturabloquez-300,
                           anchuradibujo,
                           anchuradibujo*3
                        ); 
                           }
                   }
                  
                   // L
                   if(arriba == 255 && abajo == 0 && izquierda == 255 && derecha == 0)  {
                       if(
                         (isox(x*anchurabloque,y*anchurabloque)+desfasex < anchuranavegador*0.25
                           ||
                        isox(x*anchurabloque,y*anchurabloque)+desfasex > anchuranavegador*0.75)
                        &&
                           (isoy(x*anchurabloque,y*anchurabloque)+desfasey-pixeles.data[i]*alturabloquez-300 < alturanavegador * 0.25
                           || 
                           isoy(x*anchurabloque,y*anchurabloque)+desfasey-pixeles.data[i]*alturabloquez-300 > alturanavegador * 0.75)
                       ){
                       contextofondo.drawImage(
                           bloquearquitectural4a,
                          isox(x*anchurabloque,y*anchurabloque)+desfasex,
                           isoy(x*anchurabloque,y*anchurabloque)+desfasey-pixeles.data[i]*alturabloquez-300,
                           anchuradibujo,
                           anchuradibujo*3
                        ); 
                             }
                           else{
                               contextofondo.drawImage(
                           bloquearquitectural4,
                          isox(x*anchurabloque,y*anchurabloque)+desfasex,
                           isoy(x*anchurabloque,y*anchurabloque)+desfasey-pixeles.data[i]*alturabloquez-300,
                           anchuradibujo,
                           anchuradibujo*3
                        ); 
                           }
                   }
                   if(arriba == 255 && abajo == 0 && izquierda == 0 && derecha == 255)  {
                       if(
                         (isox(x*anchurabloque,y*anchurabloque)+desfasex < anchuranavegador*0.25
                           ||
                        isox(x*anchurabloque,y*anchurabloque)+desfasex > anchuranavegador*0.75)
                        &&
                           (isoy(x*anchurabloque,y*anchurabloque)+desfasey-pixeles.data[i]*alturabloquez-300 < alturanavegador * 0.25
                           || 
                           isoy(x*anchurabloque,y*anchurabloque)+desfasey-pixeles.data[i]*alturabloquez-300 > alturanavegador * 0.75)
                       ){
                       contextofondo.drawImage(
                           bloquearquitectural3a,
                          isox(x*anchurabloque,y*anchurabloque)+desfasex,
                           isoy(x*anchurabloque,y*anchurabloque)+desfasey-pixeles.data[i]*alturabloquez-300,
                           anchuradibujo,
                           anchuradibujo*3
                        ); 
                             }
                           else{
                                contextofondo.drawImage(
                           bloquearquitectural3,
                          isox(x*anchurabloque,y*anchurabloque)+desfasex,
                           isoy(x*anchurabloque,y*anchurabloque)+desfasey-pixeles.data[i]*alturabloquez-300,
                           anchuradibujo,
                           anchuradibujo*3
                        ); 
                           }
                   }
                    if(arriba == 0 && abajo == 255 && izquierda == 255 && derecha == 0)  {
                        if(
                         (isox(x*anchurabloque,y*anchurabloque)+desfasex < anchuranavegador*0.25
                           ||
                        isox(x*anchurabloque,y*anchurabloque)+desfasex > anchuranavegador*0.75)
                        &&
                           (isoy(x*anchurabloque,y*anchurabloque)+desfasey-pixeles.data[i]*alturabloquez-300 < alturanavegador * 0.25
                           || 
                           isoy(x*anchurabloque,y*anchurabloque)+desfasey-pixeles.data[i]*alturabloquez-300 > alturanavegador * 0.75)
                       ){
                       contextofondo.drawImage(
                           bloquearquitectural1a,
                          isox(x*anchurabloque,y*anchurabloque)+desfasex,
                           isoy(x*anchurabloque,y*anchurabloque)+desfasey-pixeles.data[i]*alturabloquez-300,
                           anchuradibujo,
                           anchuradibujo*3
                        ); 
                              }
                           else{
                               contextofondo.drawImage(
                           bloquearquitectural1,
                          isox(x*anchurabloque,y*anchurabloque)+desfasex,
                           isoy(x*anchurabloque,y*anchurabloque)+desfasey-pixeles.data[i]*alturabloquez-300,
                           anchuradibujo,
                           anchuradibujo*3
                        ); 
                           }
                   }
                   if(arriba == 0 && abajo == 255 && izquierda == 0 && derecha == 255)  {
                      if(
                         (isox(x*anchurabloque,y*anchurabloque)+desfasex < anchuranavegador*0.25
                           ||
                        isox(x*anchurabloque,y*anchurabloque)+desfasex > anchuranavegador*0.75)
                        &&
                           (isoy(x*anchurabloque,y*anchurabloque)+desfasey-pixeles.data[i]*alturabloquez-300 < alturanavegador * 0.25
                           || 
                           isoy(x*anchurabloque,y*anchurabloque)+desfasey-pixeles.data[i]*alturabloquez-300 > alturanavegador * 0.75)
                       ){
                       contextofondo.drawImage(
                           bloquearquitectural2a,
                          isox(x*anchurabloque,y*anchurabloque)+desfasex,
                           isoy(x*anchurabloque,y*anchurabloque)+desfasey-pixeles.data[i]*alturabloquez-300,
                           anchuradibujo,
                           anchuradibujo*3
                        ); 
                             }
                           else{
                               contextofondo.drawImage(
                           bloquearquitectural2,
                          isox(x*anchurabloque,y*anchurabloque)+desfasex,
                           isoy(x*anchurabloque,y*anchurabloque)+desfasey-pixeles.data[i]*alturabloquez-300,
                           anchuradibujo,
                           anchuradibujo*3
                        ); 
                           }
                   }
                  
               }
               
                var techo = contextomapatechos.getImageData(x,y,1,1).data
               if(techo[3] == 255){
                    if(
                         (isox(x*anchurabloque,y*anchurabloque)+desfasex < anchuranavegador*0.25
                           ||
                        isox(x*anchurabloque,y*anchurabloque)+desfasex > anchuranavegador*0.75)
                        &&
                           (isoy(x*anchurabloque,y*anchurabloque)+desfasey-pixeles.data[i]*alturabloquez+400 < alturanavegador * 0.25
                           || 
                           isoy(x*anchurabloque,y*anchurabloque)+desfasey-pixeles.data[i]*alturabloquez+400 > alturanavegador * 0.75)
                       ){
                   contextofondo.drawImage(
                           bloquetecho,
                          isox(x*anchurabloque,y*anchurabloque)+desfasex,
                           isoy(x*anchurabloque,y*anchurabloque)+desfasey-pixeles.data[i]*alturabloquez-300,
                           anchuradibujo,
                           anchuradibujo*3
                        ); 
                    }
               }
               
            }
        }
        
   
    }
   
}

function posinicialjugador(){
    contextomapapersonajes.drawImage(mapapersonajes,0,0)
    var pixeles = contextomapapersonajes.getImageData(0,0,512,512);
    for(var i = 0;i<pixeles.data.length;i+=4){
        var cr = pixeles.data[i];
        var cg = pixeles.data[i+1];
        var cb = pixeles.data[i+2];
        var ca = pixeles.data[i+3];
        var x = (((i)%(512))/4);
        var y = Math.floor((i/512)/4);
        if(ca == 255){
           if(cr == 0 && cg == 255 && cb == 0 & ca == 255){
               posx = x;
               posy = y;
               console.log("encontrado en "+posx+","+posy)
           }
        }
        
    }
}

function creaenemigos(){
    
     var pixeles = contextomapapersonajes.getImageData(0,0,512,512);
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

function creaprops(){
    contextomapaprops.drawImage(mapaprops,0,0)
     var pixeles = contextomapaprops.getImageData(0,0,512,512);
    for(var i = 0;i<pixeles.data.length;i+=4){
        var cr = pixeles.data[i];
        var cg = pixeles.data[i+1];
        var cb = pixeles.data[i+2];
        var ca = pixeles.data[i+3];
        var x = (((i)%(512))/4);
        var y = Math.floor((i/512)/4);
        if(ca == 255){
           if(cr == 255 && cg == 0 && cb == 0 & ca == 255){
               console.log("creo un prop")
               arrayprops[numeroprops] = new Props;
               arrayprops[numeroprops].x = x*50-50
               arrayprops[numeroprops].y = y*50-50
               arrayprops[numeroprops].z = contextomapa.getImageData(x,y,1,1).data[0]
               numeroprops++;
           }
        }
        
    }
}

function crearecogibles(){
    contextomaparecogibles.drawImage(maparecogibles,0,0)
     var pixeles = contextomaparecogibles.getImageData(0,0,512,512);
    for(var i = 0;i<pixeles.data.length;i+=4){
        var cr = pixeles.data[i];
        var cg = pixeles.data[i+1];
        var cb = pixeles.data[i+2];
        var ca = pixeles.data[i+3];
        var x = (((i)%(512))/4);
        var y = Math.floor((i/512)/4);
        if(ca == 255){
           if(cr == 255 && cg == 0 && cb == 0 & ca == 255){
               console.log("creo un recogible")
               arrayrecogibles[numerorecogibles] = new Recogibles;
               arrayrecogibles[numerorecogibles].x = x*50-50
               arrayrecogibles[numerorecogibles].y = y*50-50
               arrayrecogibles[numerorecogibles].z = contextomapa.getImageData(x,y,1,1).data[0]
               numerorecogibles++;
           }
        }
        
    }
}



function creaobjetivo(){
     var pixeles = contextomapapersonajes.getImageData(0,0,512,512);
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












