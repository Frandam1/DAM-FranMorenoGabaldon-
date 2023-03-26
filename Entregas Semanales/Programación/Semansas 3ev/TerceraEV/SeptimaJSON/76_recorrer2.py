import os
from PIL import Image
import math

contador = 0
for root, dirs, files in os.walk("."):
    for filename in files:
        if filename.endswith(".jpg") or filename.endswith(".png"):
            imagen = Image.open(os.path.join(root, filename))
            pixeles = imagen.load()
            altura = imagen.size[1]
            anchura = imagen.size[0]
            for x in range(0, anchura):
                for y in range(0, altura):
                    rojo, verde, azul = pixeles[x, y]
                    color = math.floor((rojo + verde + azul) / 3)
                    pixeles[x, y] = (color, color, color)
            imagen.save(os.path.join(root, f"{filename.split('.')[0]}_grayscale.png"))
            contador += 1

print(f"Se procesaron {contador} imágenes.")
