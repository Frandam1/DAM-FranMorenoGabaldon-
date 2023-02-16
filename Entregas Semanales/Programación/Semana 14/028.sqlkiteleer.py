##TRabajar en BBDD

import sqlite3 as lite
import sys

conexion = lite.connect("agenda2.sqlite")

##Establezco un cursor para saber en que punto de la BBDD voy a trabajar
cursor = conexion.cursor()
##Le pido a la base de datos en SQL
cursor.execute("SELECT * FROM contactos;")
##Datos contienen la info de la BBDD
datos = cursor.fetchall()

for i in datos:
    print("nombre:",i[1],"telefono:",i[2],"email:",i[3])
