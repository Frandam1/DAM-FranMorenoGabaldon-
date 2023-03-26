from PIL import Image

imagen = Image.open("ejemplo1.png")
pixeles = imagen.load()
print(imagen.size)

print(pixeles[0,0])

pixeles[0,0] = (0,0,0)

imagen.save("cambiopixel.png")
