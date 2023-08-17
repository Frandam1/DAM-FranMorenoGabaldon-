import sqlite3
from prettytable import PrettyTable

# Establecemos la conexión con la base de datos
conn = sqlite3.connect('BBDDCDS.db')
c = conn.cursor()

# Creamos la tabla si no existe con los campos que queramos
c.execute('''CREATE TABLE IF NOT EXISTS cds1
             (titulo text, artista text, anio integer, genero text)''')

# Definimos una función para mostrar todos los registros de la tabla
def listar_registros():
    c.execute("SELECT * FROM cds1")
    registros = c.fetchall()
    if len(registros) == 0:
        print("No se encontraron registros.")
        return
    t = PrettyTable(['Título', 'Artista', 'Año', 'Género'])
    for registro in registros:
        t.add_row(registro)
    print(t)

# Definimos una función para agregar un nuevo registro a la tabla
def agregar_registro():
    titulo = input("Ingrese el título del CD: ")
    artista = input("Ingrese el artista del CD: ")
    anio = int(input("Ingrese el año de lanzamiento del CD: "))
    genero = input("Ingrese el género musical del CD: ")
    c.execute("INSERT INTO cds1 VALUES (?, ?, ?, ?)", (titulo, artista, anio, genero))
    conn.commit()
    print("Registro agregado exitosamente.")

# Definimos una función para buscar un registro en la tabla
def buscar_registro():
    opcion_busqueda = input("¿Desea buscar por título o por artista? (t/a): ")
    if opcion_busqueda == "t":
        titulo = input("Ingrese el título a buscar: ")
        c.execute("SELECT * FROM cds1 WHERE titulo=?", (titulo,))
    elif opcion_busqueda == "a":
        artista = input("Ingrese el artista a buscar: ")
        c.execute("SELECT * FROM cds1 WHERE artista=?", (artista,))
    else:
        print("Opción inválida.")
        return
    registros_encontrados = c.fetchall()
    if len(registros_encontrados) == 0:
        print("No se encontraron registros.")
    else:
        t = PrettyTable(['Título', 'Artista', 'Año', 'Género'])
        for registro in registros_encontrados:
            t.add_row(registro)
        print(t)

'''Menu principal, usamos bucle while para añadir las opciones al iniciar el programa, la opcion sera el input del usuario.
Despues, mediante un blucle if-else vamos pasado por las opciones(se podria hacer tambien con "case"). Para cada una de las opciones
le añadimos una de las funciones creadas previamente, excepto la ultima que es salir y haremos uj nbreak para cerrar el programa.
Tambien añadimos un else para cualquier opcion que no tengamos programada'''

while True:
    print("Seleccione una opción:")
    print("1. Listar registros")
    print("2. Agregar registro")
    print("3. Buscar registro")
    print("4. Salir")
    opcion = input("> ")
    if opcion == "1":
        listar_registros()
    elif opcion == "2":
        agregar_registro()
    elif opcion == "3":
        buscar_registro()
    elif opcion == "4":
        break
    else:
        print("Opción inválida.")
        
# Cerramos la conexión con la base de datos
conn.close()
