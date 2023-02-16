import threading
import time
import math

def trabajador(numero):
##    print("soy un currito numero %s \n" % numero)
    minumero = math.pi/(numero+1)
    time.sleep(0.1)
    trabajador(numero)

tareas = []

for i in range(3333):
    t = threading.Thread(target = trabajador, args=(i,))
    tareas.append(t)
    t.start()
