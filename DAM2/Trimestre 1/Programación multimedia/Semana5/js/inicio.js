
function inicio() {
    // Creamos una instancia sobre la que trabajar por cada uno de los objetos del array
    for (var i = 0; i < numeropersonajes; i++) {
        arraypersonajes[i] = new Personaje;
    }

    console.log("funcion inicio");
    temporizador = setTimeout(bucle, 1000);

    $(document).keydown(function (e) {
        if (e.key == "w") { direccion = 1; }
        if (e.key == "s") { direccion = 2; }
        if (e.key == "a") { direccion = 3; }
        if (e.key == "d") { direccion = 4; }
    })
    $(document).keyup(function (e) {
        if (e.key == "w") { direccion = 0; }
        if (e.key == "s") { direccion = 0; }
        if (e.key == "a") { direccion = 0; }
        if (e.key == "d") { direccion = 0; }
    })

    //Volver al menu

    $(document).keydown(function(e){
        if(e.keyCode == 27){
            pausa = true;
            $("#pantallainicialmedio").fadeIn("slow");
            $("#contenedor").addClass("difuminado");

        }
    })
    $(window).resize(function () {
        anchuranavegador = window.innerWidth;
        alturanavegador = window.innerHeight;
        // Altura y anchuras dinamicas

        document.getElementById("lienzo").height = alturanavegador;
        document.getElementById("lienzo").width = anchuranavegador;
        document.getElementById("fondo").height = alturanavegador;
        document.getElementById("fondo").width = anchuranavegador;
        document.getElementById("contenedor").height = alturanavegador;
        document.getElementById("contenedor").width = anchuranavegador;

    })
}