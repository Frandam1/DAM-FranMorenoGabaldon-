import tkinter as tk
from PIL import ImageTk, Image
from tkinter import ttk
import os
from ttkthemes import ThemedTk
import pygame
import subprocess

'''
Definimos la clase con el modulo de tkinter heredado,
cremos el constructor init para crear instancias de las clase
usando la función super
Despues, creamos el titulo, pantalla completa y el style

'''

class App(tk.Tk):
    def __init__(self):
        super().__init__()
        self.title("Aventura")
        self.state('zoomed')
        style = ttk.Style()
        style.theme_use('default')

        #Iniciamos musica, la ponemos en loop

        pygame.mixer.init()
        pygame.mixer.music.load("./music/MenuPrincipal1.wav")
        pygame.mixer.music.play(-1)
        pygame.mixer.music.play()

        '''----------------------------------------ESTILO DE LOS WIDGETS-------------------------------------------------------'''

        #Creamos los eltilos de los widgets para poder modificarlos con comodidad
        
        style.map('Custom.TButton', foreground=[('active', '!disabled', 'white'), ('pressed', 'white')],
                  background=[('active', '#FFA500'), ('pressed', '#2980b9')])
        
        style.configure('Custom.TButton', 
                font=('Hey Comic', 18), 
                borderwidth=4, highlightbackground='white',
                relief="solid", 
                foreground="black", 
                background="#7fb3d5", 
                padding=15, 
                width=40, 
                borderround=10)

        style.map('BotonSubirVolumen.TButton', foreground=[('active', '!disabled', 'white'), ('pressed', 'white')],
                  background=[('active', '#FFA500'), ('pressed', '#2980b9')])
        
        style.configure('BotonSubirVolumen.TButton', 
                font=('Life is goofy', 30), 
                borderwidth=4, highlightbackground='white',
                relief="solid", 
                foreground="black", 
                background="#40E0D0", 
                padding=11, 
                width=12,
                height=12,
                borderround=10)
        
        style.map('BotonBajarVolumen.TButton', foreground=[('active', '!disabled', 'white'), ('pressed', 'white')],
                  background=[('active', '#FFA500'), ('pressed', '#2980b9')])
        
        style.configure('BotonBajarVolumen.TButton', 
                font=('Life is goofy', 30), 
                borderwidth=4, highlightbackground='white',
                relief="solid", 
                foreground="black", 
                background="#40E0D0", 
                padding=11, 
                width=12,
                height=12,
                borderround=10)

        '''----------------------------------------WIDGETS, BOTONES, FRAMES-------------------------------------------------------'''
        
        # Frame a1 con imagen de fondo
        
        self.a1 = tk.Frame(self, width=self.winfo_screenwidth(), height=self.winfo_screenheight(), highlightthickness=0)
        self.a1.pack(fill="both", expand=True)
        img = Image.open("./img/Menu3nuevo.png")
        img = img.resize((self.winfo_screenwidth(), self.winfo_screenheight()), Image.LANCZOS)
        bg = ImageTk.PhotoImage(img)
        self.a1.background = bg
        tk.Label(self.a1, image=bg).place(x=0, y=0, relwidth=1, relheight=1)
        btn = ttk.Button(self.a1, text="EMPIEZA LA AVENTURA", style="Custom.TButton", command=self.ir_a_a2)
        btn.pack(side=tk.BOTTOM, pady=200)

        # Frame a2 con imagen de fondo
        
        self.a2 = tk.Frame(self, width=self.winfo_screenwidth(), height=self.winfo_screenheight(), highlightthickness=0)
        self.a2.pack(fill="both", expand=True)
        img = Image.open("./img/Menu2.png")
        img = img.resize((self.winfo_screenwidth(), self.winfo_screenheight()), Image.LANCZOS)
        bg = ImageTk.PhotoImage(img)
        self.a2.background = bg
        tk.Label(self.a2, image=bg).place(x=0, y=0, relwidth=1, relheight=1)
        self.a2.pack_forget()

        # Creamos y posicionamos los botones
        
        btn = ttk.Button(self.a2, text="Aventura", style="Custom.TButton", command=self.abrir_aventura)
        btn3 = ttk.Button(self.a2, text="Preguntas y Respuestas", style="Custom.TButton", command=self.abrir_quiz)
        btn2 = ttk.Button(self.a2, text="Examen Final", style="Custom.TButton", command=self.abrir_examen)
        btn4 = ttk.Button(self.a2, text="Encuentra la palabra", style="Custom.TButton", command=self.abrir_encuentra)
        btn5 = ttk.Button(self.a2, text="Volver", style="Custom.TButton", command=self.volver_a_a1)
        
        btn.place(relx=0.5, rely=0.5, anchor=tk.CENTER)
        btn2.place(relx=0.5, rely=0.8, anchor=tk.CENTER)
        btn3.place(relx=0.5, rely=0.6, anchor=tk.CENTER)
        btn4.place(relx=0.5, rely=0.7, anchor=tk.CENTER)
        btn5.place(relx=0.5, rely=0.9, anchor=tk.CENTER)


        self.btn_volumen_up = ttk.Button(self.a1, text="Subir volumen", command=self.subir_volumen,style="BotonSubirVolumen.TButton")
        self.btn_volumen_up.place(relx=0.91, rely=0.92, anchor=tk.CENTER)
        
        self.btn_volumen_down = ttk.Button(self.a1, text="Bajar volumen", command=self.bajar_volumen,style="BotonBajarVolumen.TButton")
        self.btn_volumen_down.place(relx=0.77, rely=0.92, anchor=tk.CENTER)

        '''----------------------------------------FUNCIONES------------------------------------------------------'''

    # Funciones para moverse en el menu, además de para abrir las diferentes secciones del programa.
        
    def ir_a_a2(self):
        self.a1.pack_forget()
        self.a2.pack(fill="both", expand=True)
        
    def volver_a_a1(self):
        self.a2.pack_forget()
        self.a1.pack(fill="both", expand=True)

    def abrir_aventura(self):
        pygame.mixer.music.stop()
        self.destroy()
        print("Ejecutando Aventura1.py")
        #os.system('python Aventura1.py')
        subprocess.run(['python', 'Aventura1backup.py'])

    def abrir_examen(self):
        pygame.mixer.music.stop()
        self.destroy()
        print("Ejecutando Examen.py")
        #os.system('python Aventura1.py')
        subprocess.run(['python', 'EXAMENFINAL.py'])

    def abrir_quiz(self):
        pygame.mixer.music.stop()
        self.destroy()
        print("Ejecutando quiz.py")
        #os.system('python Aventura1.py')
        subprocess.run(['python', 'QUIZ.py'])

    def abrir_encuentra(self):
        pygame.mixer.music.stop()
        self.destroy()
        print("Ejecutando quiz.py")
        #os.system('python Aventura1.py')
        subprocess.run(['python', 'PyR.py'])


    def subir_volumen(self):
        pygame.mixer.music.set_volume(pygame.mixer.music.get_volume() + 0.1)
        
    def bajar_volumen(self):
        pygame.mixer.music.set_volume(pygame.mixer.music.get_volume() - 0.1)
        
app = App()
app.mainloop()


