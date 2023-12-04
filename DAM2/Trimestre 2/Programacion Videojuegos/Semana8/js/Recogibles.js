//  PLantilla personaje(clase)
class Recogibles {
    //Creador
    constructor(x, y, z, tipo) {
       
        this.x = Math.random() * (terrenox2 - terrenox1) + terrenox1;
        this.y = Math.random() * (terrenoy2 - terrenoy1) + terrenoy1;
        this.z = 0;
        this.tipo = Math.round(Math.random()*2)
      

    }
    
}