##TRabajar en BBDD

import sqlite3 as lite
import sys

conexion = lite.connect("agenda.sqlite")

##Establezco un cursor para saber en que punto de la BBDD voy a trabajar
cursor = conexion.cursor()
##Le pido a la base de datos en SQL
cursor.execute("SELECT SQLITE_VERSION()")
##Datos contienen la info de la BBDD
datos = cursor.fetchone()
print("La version de SQLite es:",datos)
