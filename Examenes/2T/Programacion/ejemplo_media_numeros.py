import sqlite3 as prueba

conexion = prueba.connect("loterias.sqlite3")
cursor = conexion.cursor()

def calculaNumero(numero):
    numeros = []
    cursor.execute('''
        SELECT *
        FROM Euromillones
        LIMIT 1000;
        ''')
    resultados = cursor.fetchall()
    for resultado in resultados:
        numeros.append(int(resultado[numero]))
    mean = sum(numeros) / len(numeros)
    print("El valor medio es: ", mean)

calculaNumero(1)
calculaNumero(2)
calculaNumero(3)
calculaNumero(4)
calculaNumero(5)
calculaNumero(6)
calculaNumero(7)
