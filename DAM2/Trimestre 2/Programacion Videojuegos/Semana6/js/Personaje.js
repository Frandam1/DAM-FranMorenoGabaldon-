//  PLantilla personaje(clase)
class Personaje {
    //Creador
    constructor(x, y, z, color, direccion, direccionisometrica, tiempovida, estadoanim, energia) {
        this.tiempovida = 0;
        this.x = Math.random() * (terrenox2 - terrenox1) + terrenox1;
        this.y = Math.random() * (terrenoy2 - terrenoy1) + terrenoy1;
        this.direccion = Math.PI * 2 * Math.random();
        this.direccionverdadera = Math.PI * 2 * Math.random();
        this.direccionisometrica = Math.floor(Math.random() * 4);
        this.estadoanim = Math.floor(Math.random() * 7);
        this.energia = 100;
        this.color = Math.floor(Math.random()*2);

    }
    //Lo que puede hacer
    mueve() {
        //
        this.tiempovida += 1;

        /*if(this.tiempovida % 100 == 0){
            this.cambiadireccion();
        }*/

        if (this.direccionisometrica == 0) {
            this.direccion = 0;
        } else if (this.direccionisometrica == 1) {
            this.direccion = Math.PI / 2;
        } else if (this.direccionisometrica == 2) {
            this.direccion = Math.PI;
        } else if (this.direccionisometrica == 3) {
            this.direccion = Math.PI * 1.5;
        }

        this.x += Math.cos(this.direccion);
        this.y += Math.sin(this.direccion);
     /*    this.direccion += Math.random() - 0.5;
        this.cambiadireccion(); */

        //Parte 2: animaciones
        this.estadoanim++;
        if (this.estadoanim > 8) { this.estadoanim = 0; }

        if (this.tiempovida % 100 == 0) { this.pierdeenergia(); }


        this.colisiona();
    }
    persigue(){
        this.estadoanim++;
        if(this.estadoanim > 7){this.estadoanim = 0;}

        this.x -= (this.x - posx)/100;
        this.y -= (this.y - posy)/100;

        this.x -= Math.cos(this.direccion);
        this.y -= Math.sin(this.direccion);
        this.colisiona()

    }
    cambiadireccion() {
        // El pj cambia de direccion cada 100 ud desde su tiempovida
        if (this.tiempovida % 100 == 0) { this.direccionisometrica = Math.floor(Math.random() * 4); }
    }
    colisiona() {
        var colisionapixel = contextomapa.getImageData(this.x/50+1,this.y/50+1,1,1);
        var alpha = colisionapixel.data[3];
        if(alpha == 0){
            if(this.direccionisometrica == 1){this.direccionisometrica = 3}
            else if(this.direccionisometrica == 3){this.direccionisometrica = 1}
            else if(this.direccionisometrica == 0){this.direccionisometrica = 2}
            else if(this.direccionisometrica == 2){this.direccionisometrica = 0}
        }

    }
    pierdeenergia() {
        this.energia -= 1;
    }
}