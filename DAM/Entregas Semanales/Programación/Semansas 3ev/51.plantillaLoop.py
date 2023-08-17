import tkinter as tk

class Persona(object):
    def saluda():
        print("hola soy una eprsona")



class Aplicacion(object):
    def __init__(self,master):
        self.master = master
        #este metodo se inicia 1 vexz
        print("este es el metodo contructor")
        self.master.after(1000,self.bucle)
    def bucle(self):
        #este metodo se hace continuamente
        print("el programa a arrandcado y se pone a dar vueltas")
        self.master.after(1000,self.bucle)

root = tk.Tk()
aplicacion = Aplicacion(root)
