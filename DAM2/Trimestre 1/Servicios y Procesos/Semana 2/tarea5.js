onmessage = function(datos){
      //Calculo 1
      console.log(datos)
      console.log("Tu edad es "+datos.data.edad)//Ahora el worker puede trabajar con el dato
      console.log("Tu nombre es "+datos.data.nombre)
      console.log("te gusta "+datos.data.aficion)




          //Calculo 1
          console.log("Vamos al calculo 1 ")
          var num = 0.007654556756754;
          var iteraciones = 10000000000;
    
          for (var i = 0; i < iteraciones; i++) {
              num = num * 1.0000000356756743;
          }
      postMessage(num)
}





