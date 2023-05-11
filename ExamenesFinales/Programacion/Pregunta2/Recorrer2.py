import os
from PIL import Image

# Directorio con las imágenes originales
input_dir = "C:/Users\Moreno\Desktop\EXAMENES FINALES\SIMULACROS\Programacion\Pregunta2"
# Directorio de salida para las imágenes en blanco y negro
output_dir = "C:/Users\Moreno\Desktop\EXAMENES FINALES\SIMULACROS\Programacion\Pregunta2\Convertidas"

# Itera sobre todas las imágenes en el directorio de entrada y las convierte a blanco y negro
for dirpath, dirnames, filenames in os.walk(input_dir):
    for filename in filenames:
        if filename.endswith(".jpg") or filename.endswith(".png"):
            # Carga la imagen original
            img = Image.open(os.path.join(dirpath, filename))
            # Convierte la imagen a escala de grises
            gray = img.convert("L")
            # Crea una imagen nueva con solo dos colores: blanco y negro
            # Se establece el valor de umbral en 128, lo que significa que todos los píxeles con un valor inferior a 128 se convertirán en negro, y los que tengan un valor igual o superior a 128 se convertirán en blanco.
            bw = gray.point(lambda x: 0 if x < 128 else 255, '1')
            # Guarda la imagen en el directorio de salida con el mismo nombre pero agregando "_bn" al final
            output_filename = os.path.basename(filename).split(".")[0] + "_bn." + os.path.basename(filename).split(".")[1]
            bw.save(os.path.join(output_dir, output_filename))
