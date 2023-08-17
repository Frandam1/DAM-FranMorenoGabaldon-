import tkinter as tk

class Persona(object):
    def __init__(self,canvas,*argumentos,**masargumentos):
        self.canvas = canvas
        self.id = canvas.create_oval(*argumentos,**masargumentos)
        self.vx = 5
        self.vy = 0

    def mover():
        #mover aleatoriamente
        



class Aplicacion(object):
    
    def __init__(self,master):
        
        self.master = master
        self.canvas = tk.Canvas(self.master,width=512,height=512)
        self.canvas.pack()
        #pintamos ovalos
        self.personas = [

            Persona(self.canvas,50,50,10,10,outline="black",fill="red"),
            Persona(self.canvas,222,222,30,30,outline="black",fill="blue"),

            ]
        self.master.after(1000,self.bucle)
        
    def bucle(self):
        
        self.master.after(1000,self.bucle)

root = tk.Tk()
aplicacion = Aplicacion(root)
