import sqlite3

'''Este código crea una base de datos llamada "BBDDCDS.db"
y una tabla llamada "cds1" con los campos "titulo", "artista", "anio" y "genero".
Ademas, importamos la libreria necesaria y establecemos la conexion.
Al finalizar la ejecucion del programa, la conexion se cierra'''

conn = sqlite3.connect('BBDDCDS.db')
c = conn.cursor()

'''Este código selecciona todos los datos de la tabla "cds1" y los imprime en la consola.'''

c.execute("SELECT * FROM cds1")

for row in c:
    print(row)

'''Ahora, creamos la tabla si no existe con los campos que queramos'''

c.execute('''CREATE TABLE IF NOT EXISTS cds1
             (titulo text, artista text, anio integer, genero text)''')

'''Mediante la funcion input, recojemos los datos para ir añadiendo informacion a la BBDD
Notese que para ingresar el año de debe convertir peviamente la informacion a int.'''

titulo = input("Ingrese el titulo del CD: ")
artista = input("Ingrese el artista del CD: ")
anio = int(input("Ingrese el año de lanzamiento del CD: "))
genero = input("Ingrese el género musical del CD: ")

'''Despues, con el metodo execute insertamos la informacion en la BBDD.'''

c.execute("INSERT INTO cds1 VALUES (?, ?, ?, ?)", (titulo, artista, anio, genero))

conn.commit()
conn.close()
