import numpy as np

coleccion = np.array(['Juan','Davis','Ana','Lorenzo','Sofia','Lara'])

coleccion2 = np.array(['Gato','Perro','pajaro','raton','pez'])

juntado = np.concatenate((coleccion,coleccion2))

busqueda = np.where(juntado == 'raton')
print(busqueda)
