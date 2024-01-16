from PIL import Image

img = Image.new('RGBA', (30,30), color = 'black')

texto = '''La exploración del espacio exterior
ha sido un hito monumental en la historia de la humanidad,
un logro que ha llevado a descubrimientos asombrosos sobre el universo que nos rodea.
Los viajes espaciales han desafiado los límites de la tecnología y la imaginación humana,
abriendo nuevas fronteras y posibilidades para el futuro de nuestra especie.
A medida que continuamos explorando el cosmos, seguimos ampliando nuestro entendimiento
de quiénes somos y nuestro lugar
en el vasto y misterioso universo.'''

x = 0
y = 0;

for letra in texto:
    print(letra)
    img.putpixel  ((x,y),(ord(letra),0,0,255,))
    
    x = x +1
    if x == 30:
        x = 0
        y = y+1


    

    
img.save('codicado2.png')

