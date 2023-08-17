from PIL import Image
import math

imagenhorizontal = Image.open("horizontal.png")
pixeleshorizontal = imagenhorizontal.load()

imagenvertical = Image.open("vertical.png")
pixelesvertical = imagenvertical.load()

imagendiagonal1 = Image.open("diagonal1.png")
pixelesdiagonal1 = imagendiagonal1.load()

imagendiagonal2 = Image.open("diagonal2.png")
pixelesdiagonal2 = imagendiagonal2.load()



imagen = Image.open("cara.jpg")
pixeles = imagen.load()

imagenresultado = Image.open("resultado.jpg")
pixelresultado = imagenresultado.load()


altura= imagen.size[1]
anchura = imagen.size[0]

numeropixelesverticales = 0
numeropixeleshorizontales = 0
numeropixelesdiagonales1 = 0
numeropixelesdiagonales2 = 0
#~Asumimons que cojemos el pixel que esta en 0
for superx in range(0,247):
    for supery in range(0,247):
        suma = 0;
        for x in range(0,7):
            for y in range(0,7):
                if pixelesvertical[x,y][3]!= 0:
                    valor = 0
                    valor = pixeles[superx+x,supery+y][0]-pixelesvertical[x,y][0]
                    suma += valor
            
        if abs(suma) < 1000:
            pixelresultado[superx+x,supery+y] = (0,0,0)
            numeropixelesverticales += 1
        else:
            pixelresultado[superx+x,supery+y] = (255,255,255)
print("Los horizontales son :"+str(numeropixelesverticales))

for superx in range(0,247):
    for supery in range(0,247):
        suma = 0;
        for x in range(0,7):
            for y in range(0,7):
                if pixeleshorizontal[x,y][3]!= 0:
                    valor = 0
                    valor = pixeles[superx+x,supery+y][0]-pixeleshorizontal[x,y][0]
                    suma += valor
            
        if abs(suma) < 1000:
            pixelresultado[superx+x,supery+y] = (0,0,0)
            numeropixeleshorizontales += 1
        else:
            pixelresultado[superx+x,supery+y] = (255,255,255)

print("Los verticales son :"+str(numeropixeleshorizontales))

for superx in range(0,247):
    for supery in range(0,247):
        suma = 0;
        for x in range(0,7):
            for y in range(0,7):
                if pixelesdiagonal1[x,y][3]!= 0:
                    valor = 0
                    valor = pixeles[superx+x,supery+y][0]-pixelesdiagonal1[x,y][0]
                    suma += valor
            
        if abs(suma) < 1000:
            pixelresultado[superx+x,supery+y] = (0,0,0)
            numeropixelesdiagonales1 += 1
        else:
            pixelresultado[superx+x,supery+y] = (255,255,255)
            
print("Los diagonales2 son :"+str(numeropixelesdiagonales1))

for superx in range(0,247):
    for supery in range(0,247):
        suma = 0;
        for x in range(0,7):
            for y in range(0,7):
                if pixelesdiagonal2[x,y][3]!= 0:
                    valor = 0
                    valor = pixeles[superx+x,supery+y][0]-pixelesdiagonal2[x,y][0]
                    suma += valor
            
        if abs(suma) < 1000:
            pixelresultado[superx+x,supery+y] = (0,0,0)
            numeropixelesdiagonales2 += 1
        else:
            pixelresultado[superx+x,supery+y] = (255,255,255)

print("Los diagonales1 son :"+str(numeropixelesdiagonales2))
            


    


imagen.save("cara1guardado.png")
imagenresultado.save("resultado.jpg")
