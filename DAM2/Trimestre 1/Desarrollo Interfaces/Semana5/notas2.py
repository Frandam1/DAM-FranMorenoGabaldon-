#Comentarios varios
import sqlite3 as bd
import time
import re

conexion = bd.connect("notas.sqlite")
cursor = conexion.cursor()
cursor.execute("""
    CREATE TABLE IF NOT EXISTS 'notas' (
        'id' INTEGER,
        'texto' TEXT,
        'color' TEXT,
        'fecha' TEXT,
        PRIMARY KEY ('id' AUTOINCREMENT)
    );    
""")
cursor.execute("""
    CREATE TABLE IF NOT EXISTS 'usuarios' (
        'id' INTEGER,
        'usuario' TEXT,
        'contrasena' TEXT,
        'email' TEXT,
        PRIMARY KEY ('id' AUTOINCREMENT)
    );    
""")


#Creditos
print("Programa de Notas en Python")
print("(c)2023 Copy--Fran")

class Nota:
    def __init__(self,texto,color,fecha):
        self.texto = texto
        self.color = color
        self.fecha = fecha

usuario = "Esto es una nota"
notas = []

print("Introduce el usuaro")
usuario = input()
print("El uduario es : "+usuario)
print("Introduce tu password")
contrasena = input()
print("Introduce tu email")
email = input()

expresion = re.compile(r'([A-Za-z0-9]+[.-_])*[A-Za-z0-9]+@[A-Za-z0-9-]+(\.[A-Za-z]{2,})+')

if re.fullmatch(expresion,email):
    cursor.execute("INSERT INTO usuarios VALUES (NULL,'"+usuario+"','"+contrasena+"','"+email+"');")
    conexion.commit()   
else:
    print("tu correo no es valido")


 


for i in range(0,10):       
    print("Introduce la siguiente nota de la lista: ")
    entrada = input()
    print("Introduce el color de la nota: ")
    color = input()
    #print("Introduce la fecha de la nota: ")
    fecha = str(int(time.time()))
    if entrada == "salir":
        break
    else:
        notas.append(Nota(entrada,color,fecha))
        print("Nueva nota introducida")
        

        
print("Sacamos el contenido de todas las notas")
for i in notas:
    print(i.texto)
    print(i.color)
    print(i.fecha)
    
    cursor.execute("INSERT INTO notas VALUES (NULL,'"+i.texto+"','"+i.color+"','"+i.fecha+"');")
    conexion.commit()  
    
def eliminar_nota(notas):
    if not notas:
        print("No hay notas para eliminar.")
        return

    print("Lista de notas:")
    for i, nota in enumerate(notas):
        print(f"{i + 1}: {nota.texto}")

    try:
        opcion = int(input("Ingrese el número de la nota que desea eliminar (o 0 para cancelar): "))
        if opcion == 0:
            print("Operación de eliminación cancelada.")
            return

        if 1 <= opcion <= len(notas):
            nota_eliminada = notas.pop(opcion - 1)
            print(f"La nota '{nota_eliminada.texto}' ha sido eliminada.")
        else:
            print("Opción no válida. Debe seleccionar un número de nota válido.")
    except ValueError:
        print("Opción no válida. Debe ingresar un número.")
        
eliminar_nota(notas)  