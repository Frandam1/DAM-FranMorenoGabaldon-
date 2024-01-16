from PIL import Image

img = Image.open(r"codicado2.png")
print(img)

pixeles = img.getdata()
print(pixeles)
cadena = ""

for pixel in pixeles:
    print(chr(pixel[0]))

    cadena = cadena + chr(pixel[0])

print(cadena)

