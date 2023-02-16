##Importamos la libreria
import sqlite3 as prueba

##si es necesario, pip install db-sqlite3

##me conecto a sqlite3
conexion = prueba.connect("loterias.sqlite3")

##hago el cursor pertienente de cuando me conecto a una BBDD

cursor = conexion.cursor()

##Convertimos todo este proceso de calculo en una funcion

def calculaNumero(numero):

    ##Le pedimos algo con un select

    cursor.execute('''
        SELECT *
        FROM Euromillones
        LIMIT 1000;
        ''')
    ##Recuperamos la informacion conn un bucle for

    ##Establecemos operadores dentro de variables
    minimo = 1000000

    datos = cursor.fetchall()
    for i in datos:
        #print(i[1])
     ##  Para calcular el minimo, se usa este comparador   
        if int(i[numero]) < minimo:
            minimo = int(i[numero])
    ##Hago diferentes operaciones con esa informacion
   
    ##lo saco por pantalla
    
    ##Round redondea
    print("El numero mas pequeño que aparece en cada casilla es",numero," es:",minimo)

##Usamos la funcion para no repetir codigo, ponemos en argumento la casilla
#que queramos 
calculaNumero(1)
calculaNumero(2)
calculaNumero(3)
calculaNumero(4)
calculaNumero(5)

calculaNumero(6)
calculaNumero(7)
