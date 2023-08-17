## importaciones necesarias para usar las funciones de la
## librería os (para manipular archivos y directorios)
## y PIL (para cargar y manipular imágenes).

import os
from PIL import Image

# Directorio con las imágenes originales
input_dir = r"C:/Users/fran/Desktop/Repositorio Centrailizado/DAM-FranMorenoGabaldon-/Simulacros 3ev/Programacion/Pregunta2"

# Comprueba si el directorio de entrada existe
if os.path.exists(input_dir):
    print("El directorio de entrada existe.")
else:
    print("El directorio de entrada no existe.")

# Directorio de salida para las imágenes en blanco y negro
output_dir = r"C:/Users/fran/Desktop/Repositorio Centrailizado/DAM-FranMorenoGabaldon-/Simulacros 3ev/Programacion/Pregunta2/Convertidas"

# Comprueba si el directorio de salida existe
if os.path.exists(output_dir):
    print("El directorio de salida existe.")
else:
    print("El directorio de salida no existe.")

## Itera sobre todas las imágenes en el directorio de entrada y las convierte a blanco y negro
##os.walk(input_dir) es una función que itera sobre todas las subcarpetas,
##subdirectorios y archivos contenidos en el directorio de entrada input_dir.
##Devuelve tres valores: dirpath (la ruta completa del directorio actual), dirnames
##(una lista de los nombres de las subcarpetas)
##y filenames (una lista de los nombres de los archivos).

for dirpath, dirnames, filenames in os.walk(input_dir):

##for filename in filenames: itera sobre todos los nombres de los archivos en filenames.
    
    for filename in filenames:

#if filename.endswith(".jpg") or filename.endswith(".png"): verifica si el archivo tiene una extensión de imagen válida (en este caso, ".jpg" o ".png")
        
        if filename.endswith(".jpg") or filename.endswith(".png"):
            # Carga la imagen original
            img = Image.open(os.path.join(dirpath, filename))
            
            # Verifica si la imagen ya se ha procesado
            if not filename.endswith("_bn.jpg") and not filename.endswith("_bn.png"):
                # Convierte la imagen a escala de grises
                gray = img.convert("L")
                # Crea una imagen nueva con solo dos colores: blanco y negro
                # Se establece el valor de umbral en 128, lo que significa que todos los píxeles con un valor inferior a 128 se convertirán en negro, y los que tengan un valor igual o superior a 128 se convertirán en blanco.
                bw = gray.point(lambda x: 0 if x < 128 else 255, '1')
                # Guarda la imagen en el directorio de salida con el mismo nombre pero agregando "_bn" al final
                output_filename = os.path.basename(filename).split(".")[0] + "_bn." + os.path.basename(filename).split(".")[1]
                bw.save(os.path.join(output_dir, output_filename))


