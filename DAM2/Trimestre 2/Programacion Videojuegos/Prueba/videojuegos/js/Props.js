/* creamos una plantilla para un personaje */
class Props{
    /* Dotamos al personaje de una serie de propiedades iniciales */
    constructor(x,y,z,tipo) {
        /* Le proporciono unos valores de inicio a la instancia */
       
        this.x = Math.random()*(terrenox2-terrenox1)+terrenox1;
        this.y = Math.random()*(terrenoy2-terrenoy1)+terrenoy1;
        this.z = 0;
    }
    
}