import time

numero = 0.00000042324
contador = 0

def bucle():
    contador = contador +1
    if contador % 100 == 0:
        print("vamos bien")
    numero = numero*1.2
    time.sleep(0.01)
    bucle()

time.sleep(1)
bucle(contador, numero)
