class Persona {
    constructor(nombre, edad, apellido){
       this.nombre = nombre;
       this.edad = edad;
       this.apellido = apellido;
    }
    devolverNombre(){
      return `El nombre de este objeto es ${this.nombre}, es bonito`
    }
    devolverEdad(){
      return `La edad de Cris es de ${this.edad}`
    }
  }
  
  const persona1 = new Persona("fran", 33, "moreno");
  const persona2 = new Persona("cris", 23, "fuster")
  console.log(persona1);
  console.log(persona2);
  
  
  
  class Disco{
    constructor(titulo, año, genero){
      this.titulo = titulo;
      this.año = año;
      this.genero = genero;
    }
    añoDisco(){
      return `El año de este disco es el ${this.año}`
    }
    generoDisco(){
      return `El genero de este disco es el ${this.genero}`
    }
  }
  
  const disco1 = new Disco("start", 1998, "rock");
  const disco2 = new Disco("end", 2003, "power");
  
  console.log(persona1.devolverNombre());
  console.log(persona2.devolverEdad())
  
  console.log(disco1.añoDisco());
  console.log(disco2.generoDisco());


  // Clase Perrete

  class Perrete {
    constructor(raza, peso, temperamento){
        this.raza = raza;
        this.peso = peso;
        this.temperamento = temperamento;

    }
    declararRaza(){
        return `La raza de este perrete es ${this.raza}`
    }
    declararPeso(){
        return `El peso de este perrte es ${this.peso}`
    }
  }
  
  const perrete1 = new Perrete("golden", 32, "amable");
  const perrete2 = new Perrete("shiba", 12, "arisco");

  console.log(perrete1.declararPeso())
  console.log(perrete2.declararRaza())



  class Huevo{
    constructor(tamaño, peso,color, envase){
        this.tamaño = tamaño;
        this.peso = peso;
        this.color = color;
        this.envase = envase;
    }
    verTamaño(){
        return `El tamañño del huevo es ${this.tamaño}`;
    }

    verPeso(){
        return `El peso del huevo es ${this.peso}`;
    }

  }

  const huevo1 = new Huevo("grande", 23, "blanco", "plastico");

  console.log(huevo1.verTamaño());