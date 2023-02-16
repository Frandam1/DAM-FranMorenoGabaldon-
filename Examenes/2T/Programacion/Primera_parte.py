##Importamos la libreria
import sqlite3 as prueba

##si es necesario, pip install db-sqlite3

##me conecto a sqlite3
conexion = prueba.connect("loterias.sqlite3")

##hago el cursor pertienente de cuando me conecto a una BBDD

cursor = conexion.cursor()

##Le pedimos algo con un select

cursor.execute('''
            SELECT n2
            FROM Euromillones

            
            LIMIT 100;
            ''')

##Recabamos los datos en una variable

datos = cursor.fetchall()

##Sacamos los datos por pantalla, en este caso de una sola columna


print(datos)
