from PIL import Image
import os
import json

carpeta = "img"
carpetasalida = "salida"
imagenes = []

archivos = os.listdir(carpeta)

for archivo in archivos:
    imagen = os.path.join(carpeta, archivo)
    miimagen = Image.open(imagen)
    anchura = miimagen.width
    altura = miimagen.height
    
    if anchura > altura:
        caja = (
            anchura/2 - altura/2,
            0,
            anchura/2 + altura/2,
            altura
        )
        cortada = miimagen.crop(caja)
        escalada = cortada.resize((512, 512))
        escalada.save(os.path.join(carpetasalida, archivo))
    else:
        cortada = miimagen
        escalada = cortada.resize((512, 512))
        escalada.save(os.path.join(carpetasalida, archivo))
        imagenes.append(archivo)
        
archivojson = open("json/imagenes.json","w")
json.dump(imagenes,archivojson)
archivojson.close()

