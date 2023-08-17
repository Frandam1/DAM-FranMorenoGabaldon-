from tkinter import *

marco = Frame(width=300,height=30)
marco.pack(padx=30,pady=30)

#Canvas no se cambia
lienzo = Canvas()
#la linea empieza en x, y, extension y duracion
lienzo.create_line(15,25,200,240)
lienzo.create_line(15,55,200,270,dash=(4,2))
lienzo.pack(side=TOP)
