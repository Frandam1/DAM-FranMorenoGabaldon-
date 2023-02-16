##TRabajar en BBDD

import sqlite3 as lite
import sys

conexion = lite.connect("agenda2.sqlite")

##Establezco un cursor para saber en que punto de la BBDD voy a trabajar
cursor = conexion.cursor()
##Le pido a la base de datos en SQL
cursor.execute("DELETE FROM contactos WHERE Identificador = 1;")

conexion.commit()
