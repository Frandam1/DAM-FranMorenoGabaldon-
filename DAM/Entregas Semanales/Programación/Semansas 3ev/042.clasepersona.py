##Definimos una clase
class Persona:
    ##Constructor propiedades, es intrinseco
    def __init__(self,nombre,edad,apellido,colorpelo):
        self.nombre = nombre
        self.edad = edad
        self.apellido = apellido
        self.colorpelo = colorpelo
     ##Constructor metodos, requiere una accion
    def mePresento(self):
        print("Hola mi nombre es"+self.nombre)

persona1 = Persona("Juan",0,"Lopez","negro")
persona2 = Persona("Pedro",3,"garcia","rubio")

print(persona1.edad)
print(persona2.colorpelo)

persona1.mePresento()

del persona1

persona1.mePresento()
