from PIL import Image
import random

# Crea una imagen RGBA con fondo negro
img = Image.new('RGBA', (30, 30), color='black')

texto = '''Lorem ipsum dolor sit amet,
consectetur adipiscing elit. Curabitur
dignissim metus eget felis sagittis, quis iaculis tortor aliquet.
Vestibulum vestibulum nunc sit amet lobortis gravida
Lorem ipsum dolor sit amet,
consectetur adipiscing elit. Curabitur
dignissim metus eget felis sagittis, quis iaculis tortor aliquet.
Vestibulum vestibulum nunc sit amet lobortis gravida
Lorem ipsum dolor sit amet,
consectetur adipiscing elit. Curabitur
dignissim metus eget felis sagittis, quis iaculis tortor aliquet.
Vestibulum vestibulum nunc sit amet lobortis gravida
Lorem ipsum dolor sit amet,
consectetur adipiscing elit. Curabitur
dignissim metus eget felis sagittis, quis iaculis tortor aliquet.
Vestibulum vestibulum nunc sit amet lobortis gravida.'''

x = 0
y = 0

for letra in texto:
    # Genera valores de color aleatorios para rojo, verde y azul
    color = (random.randint(0, 255), random.randint(0, 255), random.randint(0, 255), 255)
    img.putpixel((x, y), color)

    x = x + 1
    if x == 30:
        x = 0
        y = y + 1

img.save('prueba1.png')
