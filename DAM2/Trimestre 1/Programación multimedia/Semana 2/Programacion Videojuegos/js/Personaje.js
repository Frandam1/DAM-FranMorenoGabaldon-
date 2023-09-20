        //  PLantilla personaje(clase)
        class Personaje {
            //Creador
            constructor(x, y, z, color, direccion, direccionisometrica, tiempovida) {
                this.tiempovida = 0;
                this.x = Math.random() * anchuranavegador;
                this.y = Math.random() * alturanavegador;
                this.direccion = Math.PI * 2 * Math.random();
                this.direccionverdadera = Math.PI * 2 * Math.random();
                this.direccionisometrica = Math.floor(Math.random() * 4);
                this.color = "#ffcc66";

            }
            //Lo que puede hacer
            mueve() {
                //
                this.tiempovida += 1;
                this.x += Math.cos(this.direccion);
                this.y += Math.sin(this.direccion);
                this.direccion += Math.random() - 0.5;

                // El pj cambia de direccion cada 100 ud desde su tiempovida
                if (this.tiempovida % 100 == 0) { this.direccionisometrica = Math.floor(Math.random() * 4); }

                if (this.direccionisometrica == 0) {
                    this.direccion = 0;
                } else if (this.direccionisometrica == 1) {
                    this.direccion = Math.PI / 2;
                } else if (this.direccionisometrica == 2) {
                    this.direccion = Math.PI;
                } else if (this.direccionisometrica == 3) {
                    this.direccion = Math.PI * 1.5;
                }

                this.colisiona();
            }
            colisiona() {
                if (this.x > anchuranavegador || this.x < 0 || this.y > alturanavegador || this.y < 0) {
                    this.direccion += Math.PI;

                }
            }
        }