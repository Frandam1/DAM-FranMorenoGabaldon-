// Variables globales para almacenar datos
var id;
var otros;
var comida;

// Función que se ejecuta cuando se recibe un mensaje
onmessage = function (datos) {
    // Asigna los datos recibidos a las variables globales
    id = datos.data.id;
    otros = datos.data.otros;
    comida = datos.data.comida;
}

// Variable para el temporizador
var temporizador;

// Variables de estado del objeto
var posx = Math.random() * 512;
var posy = Math.random() * 512;
var cr = Math.round(Math.random() * 256);
var cg = Math.round(Math.random() * 256);
var cb = Math.round(Math.random() * 256);
var tam = 2;
var direccion = Math.random() * Math.PI * 2;
var velocidad = Math.random();
var energia = 100;
var hambre = 0;
var muerto = false;
var dormido = false;
var hambriento = false;

// Función de inicio del objeto
function inicio() {
    // Configura el temporizador para llamar a la función "bucle" cada 1000ms (1 segundo)
    temporizador = setTimeout("bucle()", 1000)
}

// Función para verificar colisión con los bordes
function colisionabordes() {
    // Si la posición está fuera de los bordes, cambia la dirección del objeto
    if (posx < 0 || posx > 512 || posy < 0 || posy > 512) {
        direccion += Math.PI;
    }
}

// Función para mover el objeto
function mueve() {
    // Calcula la nueva posición basada en la dirección y velocidad
    posx += Math.cos(direccion) * velocidad;
    posy += Math.sin(direccion) * velocidad;

    // Reduce la energía y aumenta el hambre
    energia--;
    hambre++;
}

// Función para buscar comida si el objeto tiene hambre
function buscocomida() {
    if (hambriento == true) {
        console.log("A comer")
        for (var i = 0; i < comida.length; i++) {
            // Calcula la distancia entre el objeto y la comida
            var a = posx - comida[i].x;
            var b = posy - comida[i].y;
            distancia = Math.sqrt(a * a + b * b);
            
            // Si la comida está lo suficientemente cerca (distancia < 60), ajusta la dirección hacia la comida
            if (distancia < 60) {
                var angleRadians = Math.atan2(comida[i].y - posy, comida[i].x - posx);
                direccion = angleRadians;

                // Si está muy cerca (distancia < 10), reduce el hambre
                if (distancia < 10) {
                    hambre--;
                }
            }
        }
    }
}

// Función para comer
function como() {
    // Esta función podría implementarse para reducir la cantidad de comida y aumentar la energía
    // Puedes agregar código aquí para manejar la lógica de alimentación
}

// Función para cambiar la dirección del objeto de forma aleatoria
function cambiadireccion() {
    // Ajusta la dirección al azar
    direccion += (Math.random() - 0.5) / 4;
    
    // Actualiza la posición basada en la nueva dirección y velocidad
    posx += Math.cos(direccion) * velocidad * 3;
    posy += Math.sin(direccion) * velocidad * 3;
}

// Función para evitar colisiones con otros objetos
function evitarse() {
    for (var i = 0; i < otros.length; i++) {
        var a = posx - otros[i].x;
        var b = posy - otros[i].y;
        var distancia = Math.sqrt(a * a + b * b);
        
        // Si la distancia es menor que 25 (colisión cercana) y no es el mismo objeto y la distancia es mayor que 4
        if (distancia < 25 && otros[i].id !== id && distancia > 4) {
            direccion += Math.PI;
            tam = 5; // Cambia el tamaño del objeto
        }
    }
}

// Función para simular el estado de sueño del objeto
function duerme() {
    // Aumenta la energía y el hambre ligeramente mientras duerme
    energia += 0.2;
    hambre += 0.2;
}

// Función para verificar si el objeto ha muerto de hambre
function muerte() {
    // Si el nivel de hambre supera cierto umbral, se marca como muerto y se cambian sus propiedades
    if (hambre > 100) {
        muerto = true;
        cr = 0; // Cambia el color a rojo
        cb = 0;
        cg = 0;
        //tam = energia * 10; // Ajusta el tamaño basado en la energía (comentario)
    }
}

// Función principal del bucle del objeto
function bucle() {
    // Se aplican lógicas de control del objeto
    //if (hambre < 0) { hambre = 0 } // (Comentario) Ajusta el nivel de hambre mínimo (opcional)
    
    // Limita la energía máxima a 100 (comentario)
    if (energia > 100) {
        energia = 10;
    }

    // Si el objeto no está muerto
    if (muerto == false) {
        // Calcula el tamaño basado en la energía (comentario)
        tam = energia / 10;
        
        // Verifica si colisiona con los bordes del espacio
        colisionabordes();
        
        // Cambia la dirección de forma aleatoria
        cambiadireccion();
        
        // Busca comida si el objeto tiene hambre
        buscocomida();

        // Si la energía es baja, el objeto entra en estado de sueño
        if (energia < 20) {
            dormido = true;
        }

        // Si está dormido, aumenta la energía y el hambre lentamente
        if (dormido == true) {
            duerme();
        }

        // Si la energía es alta, el objeto se despierta
        if (energia > 80) {
            dormido = false;
        }

        // Si no está dormido, el objeto se mueve
        if (dormido == false) {
            mueve();
        }

        // Si el nivel de hambre es alto, el objeto tiene hambre
        if (hambre > 80) {
            hambriento = true;
        }

        // Si el nivel de hambre es bajo, el objeto no tiene hambre
        if (hambre < 20) {
            hambriento = false;
        }

        // Verifica si el objeto ha muerto de hambre
        muerte();
        //evitarse(); // (Comentario) Lógica de evitación de colisiones (opcional)
    }

    // Envía los datos del objeto al hilo principal
    postMessage({ id: id, x: posx, y: posy, mir: cr, mig: cg, mib: cb, tam: tam });

    // Configura el temporizador para llamar a la función "bucle" cada 33ms
    clearTimeout(temporizador);
    temporizador = setTimeout("bucle()", 33);
}
