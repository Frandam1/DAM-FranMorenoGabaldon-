import os
from PIL import Image

# Carpeta con las imágenes a procesar
carpeta_imagenes = "C:/Users\Moreno\Desktop\EXAMENES FINALES\SIMULACROS\Programacion\Pregunta2"

# Recorrer todas las imágenes de la carpeta y convertirlas a blanco y negro
for archivos in os.walk(carpeta_imagenes):
    for archivo in archivos:
        # Comprobar si el archivo es una imagen
        if archivo.endswith('.jpg') or archivo.endswith('.jpeg') or archivo.endswith('.png'):
            # Abrir la imagen con PIL
            imagen = Image.open(os.path.join(archivo))
            # Convertir la imagen a escala de grises
            imagen_grises = imagen.convert('L')
            # Obtener los píxeles de la imagen
            pixels = imagen_grises.load()
            # Recorrer los píxeles y convertirlos a blanco o negro
            for i in range(imagen_grises.size[0]):
                for j in range(imagen_grises.size[1]):
                    # Comprobar si el pixel es más claro o más oscuro que la mitad del rango de grises
                    if pixels[i,j] < 128:
                        pixels[i,j] = 0 # negro
                    else:
                        pixels[i,j] = 255 # blanco
            # Guardar la imagen procesada
            imagen_grises.save(os.path.join(archivos, 'bn_'+archivo))
