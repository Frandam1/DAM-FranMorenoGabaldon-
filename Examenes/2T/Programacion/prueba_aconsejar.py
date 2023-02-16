##Importamos la libreria
import sqlite3 as prueba

##si es necesario, pip install db-sqlite3

##me conecto a sqlite3
conexion = prueba.connect("loterias.sqlite3")

##hago el cursor pertienente de cuando me conecto a una BBDD

cursor = conexion.cursor()

def calculaNumero(numero):
    ##Almaceno o creo una lista
    numeros = []
    #Le doy a START la lista y les pongo el contador 0
    for i in range(0,51):
        #De momento, el numero X se a repetido 0 veces
        numeros.append(0)

    cursor.execute('''
        SELECT *
        FROM Euromillones
        LIMIT 1000;
        ''')
    
    maximo = 0
    datos = cursor.fetchall()
    for i in datos:
        numeros[int(i[numero])] = numeros[int(i[numero])] + 1
   
    maximo = max(numeros)
    # Encuentro el número que se repite más veces.
    numero_maximo = numeros.index(maximo)
    return numero_maximo

numero_maximo = calculaNumero(1)
numero_maximo2 = calculaNumero(2)
numero_maximo3 = calculaNumero(3)
numero_maximo4 = calculaNumero(4)
numero_maximo5 = calculaNumero(5)
numero_maximo6 = calculaNumero(6)
numero_maximo7 = calculaNumero(7)
print(f'El número que más se repite en la linea 1 es el {numero_maximo}')
print(f'El número que más se repite en la linea 2 es el {numero_maximo2}')
print(f'El número que más se repite en la linea 3 es el {numero_maximo3}')
print(f'El número que más se repite en la linea 4 es el {numero_maximo4}')
print(f'El número que más se repite en la linea 5 es el {numero_maximo5}')
print(f'El número que más se repite en la linea 6 es el {numero_maximo6}')
print(f'El número que más se repite en la linea 7 es el {numero_maximo7}')

