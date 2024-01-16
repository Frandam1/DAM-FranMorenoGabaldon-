onmessage = function(){
      //Calculo 1
      console.log("Vamos al calculo 2 ")
          //Calculo 1
          console.log("Vamos al calculo 1 ")
          var num = 0.007654556756754;
          var iteraciones = 10000000000;
    
          for (var i = 0; i < iteraciones; i++) {
              num = num * 1.0000000356756743;
          }
      postMessage(num)
}





