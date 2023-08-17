import tkinter as tk
import random

class Persona(object):
    def __init__(self,canvas,*argumentos,**masargumentos):
        self.canvas = canvas
        self.id = canvas.create_oval(*argumentos,**masargumentos)
        self.vx = 1
        self.vy = 0

    def mover(self):
        #mover aleatoriamente, creando un bounding box
        x1,y1,x2,y2 = self.canvas.bbox(self.id)
        self.vx = random.randint(-1,1)
        self.vy = random.randint(-1,1)
        self.canvas.move(self.id,self.vx,self.vy)



class Aplicacion(object):
    
    def __init__(self,master):
        
        self.master = master
        self.canvas = tk.Canvas(self.master,width=512,height=512)
        self.canvas.pack()
        #pintamos ovalos
        self.personas = [

            Persona(self.canvas,50,50,10,10,outline="black",fill="red"),
           

            ]
        for i in range(20):
            self.personas.append(Persona(self.canvas,50,50,10,10,outline="black",fill="red"),)
        self.canvas.pack()
        self.master.after(1000,self.bucle)

        
    def bucle(self):
        for persona in self.personas:
            persona.mover()
        
        self.master.after(33,self.bucle)

root = tk.Tk()
aplicacion = Aplicacion(root)
