from PIL import Image
import tkinter as tk
from tkinter import ttk

root = tk.Tk()
root.geometry('250x250')

textoescrito = tk.StringVar()
nombrearchivo = tk.StringVar()


def guardar():
    img = Image.new('RGBA', (30,30), color = 'black')
    texto = textoescrito.get()
    x = 0
    y = 0;

    for letra in texto:
        print(letra)
        img.putpixel  ((x,y),(ord(letra),0,0,255,))
        
        x = x +1
        if x == 30:
            x = 0
            y = y+1


    

    
    img.save(nombrearchivo.get()+'.png')

label1 = tk.Label(root,text = "Indica el nombnre del archivo")
label1.pack()

entrada1 = tk.Entry(root,textvariable=nombrearchivo)
entrada1.pack()


label2 = tk.Label(root,text = "Indica el mensaje")
label2.pack()

entrada2 = tk.Entry(root,textvariable=textoescrito)
entrada2.pack()

boton = tk.Button(root,text="Guardar", command = guardar)
boton.pack()



root.mainloop()





