from PIL import Image
import math

imagenhorizontal = Image.open("horizontal.png")
pixeleshorizontal = imagenhorizontal.load()



imagen = Image.open("carabordes1.jpg")
pixeles = imagen.load()

imagenresultado = Image.open("resultado.jpg")
pixelresultado = imagenresultado.load()


altura= imagen.size[1]
anchura = imagen.size[0]


#~Asumimons que cojemos el pixel que esta en 0
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
        else:
            pixelresultado[superx+x,supery+y] = (255,255,255)
            


    


imagen.save("cara1guardado.png")
imagenresultado.save("resultado1.jpg")
