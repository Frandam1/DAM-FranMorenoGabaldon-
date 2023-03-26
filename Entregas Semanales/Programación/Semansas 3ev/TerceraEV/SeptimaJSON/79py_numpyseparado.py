import numpy as np

coleccion = np.array(['Juan','Davis','Ana','Lorenzo','Sofia','Lara'])

coleccion2 = np.array(['Gato','Perro','pajaro','raton','pez'])

juntado = np.concatenate((coleccion,coleccion2))

print(juntado)

separado = np.array_split(juntado,3)

print("La parte 1 es :")
print(separado[0])
print("La parte 2 es :")
print(separado[1])
print("La parte 3 es :")
print(separado[2])
