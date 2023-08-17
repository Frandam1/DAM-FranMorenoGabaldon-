from tkinter import *

def saluda():
    print("Has pulsado un bopton")

marco = Frame(width=300,height=300,bg="#4682B4")
marco.pack(padx=30,pady=30)


titulo = Label(marco, text="Programa agenda v0.1", font=("Arial, Verdana,sans-serif",24),fg="black")
titulo.pack(side=TOP)

autor = Label(marco, text="Fran", fg="blue", font=("Arial, Verdana,sans-serif",16))
autor.pack(side=TOP)

foto = PhotoImage(file="youtube.png", )

etiquetafoto = Label(marco,image=foto)
etiquetafoto.pack(side=TOP)

boton = Button(marco,text="Pulsame",command=saluda)
boton.pack(side=TOP,padx=10,pady=10)



mainloop()
