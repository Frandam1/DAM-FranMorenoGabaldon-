import tkinter as tk
from PIL import ImageTk, Image
from tkinter import ttk
from ttkthemes import ThemedTk
import pygame
import subprocess

class AventuraChica(tk.Tk):
    def __init__(self):
        super().__init__()
        self.title("AventuraChica")
        self.state('zoomed')
        style = ttk.Style()
        style.theme_use('default')

##        pygame.mixer.init()
##        pygame.mixer.music.load("./music/9bit/xDeviruchi - And The Journey Begins .wav")
##        pygame.mixer.music.play(-1)
##        pygame.mixer.music.play()

        '''-------------------------------------ESTILOS PARA LOS BOTONES-----------------------------------------------'''

        style.map('Custom.TButton', foreground=[('active', '!disabled', 'white'), ('pressed', 'white')],
                  background=[('active', '#FFA500'), ('pressed', '#2980b9')])
        style.configure('Custom.TButton', 
                font=('Life is goofy', 30), 
                borderwidth=4, highlightbackground='white',
                relief="solid", 
                foreground="black", 
                background="#40E0D0", 
                padding=11, 
                width=12,
                height=60,
                borderround=10)
        
        style.map('Custom2.TButton', foreground=[('active', '!disabled', 'white'), ('pressed', 'white')],
                  background=[('active', '#FFA500'), ('pressed', '#2980b9')])
        style.configure('Custom2.TButton', 
                font=('Life is goofy', 30), 
                borderwidth=4, highlightbackground='white',
                relief="solid", 
                foreground="black", 
                background="#40E0D0", 
                padding=(40,40), 
                width=75,
                borderround=10)

        '''--------------------------------------ESTILOS PARA LA CAJA DE DIALOGO-----------------------------------------------'''
        
        caja_style = ttk.Style()
        caja_style.configure('Mensaje.TLabel', 
            background='black', 
            foreground='#ffffff', 
            font=('Vanilla Caramel', 20), 
            padding=10,
            borderwidth=5,
            relief='raised', )

        '''-------------------------------------CREACION DE FRAMES ----------------------------------------------'''
        
        self.b1 = tk.Frame(self, width=self.winfo_screenwidth(), height=self.winfo_screenheight(), highlightthickness=0)
        self.b1.pack(fill="both", expand=True)
        img = Image.open("./img/chica1.png")
        img = img.resize((self.winfo_screenwidth(), self.winfo_screenheight()), Image.LANCZOS)
        bg = ImageTk.PhotoImage(img)
        self.b1.background = bg
        tk.Label(self.b1, image=bg).place(x=0, y=0, relwidth=1, relheight=1)

        self.b2 = tk.Frame(self, width=self.winfo_screenwidth(), height=self.winfo_screenheight(), highlightthickness=0)
        self.b2.pack(fill="both", expand=True)
        img = Image.open("./img/chica2.png")
        img = img.resize((self.winfo_screenwidth(), self.winfo_screenheight()), Image.LANCZOS)
        bg = ImageTk.PhotoImage(img)
        self.b2.background = bg
        tk.Label(self.b2, image=bg).place(x=0, y=0, relwidth=1, relheight=1)
        self.b2.pack_forget()

        self.b3 = tk.Frame(self, width=self.winfo_screenwidth(), height=self.winfo_screenheight(), highlightthickness=0)
        self.b3.pack(fill="both", expand=True)
        img = Image.open("./img/eleccionchica1.png")
        img = img.resize((self.winfo_screenwidth(), self.winfo_screenheight()), Image.LANCZOS)
        bg = ImageTk.PhotoImage(img)
        self.b3.background = bg
        tk.Label(self.b3, image=bg).place(x=0, y=0, relwidth=1, relheight=1)
        self.b3.pack_forget()

        self.b4 = tk.Frame(self, width=self.winfo_screenwidth(), height=self.winfo_screenheight(), highlightthickness=0)
        self.b4.pack(fill="both", expand=True)
        img = Image.open("./img/chicamalaeleccion.png")
        img = img.resize((self.winfo_screenwidth(), self.winfo_screenheight()), Image.LANCZOS)
        bg = ImageTk.PhotoImage(img)
        self.b4.background = bg
        tk.Label(self.b4, image=bg).place(x=0, y=0, relwidth=1, relheight=1)
        self.b4.pack_forget()

        self.b5 = tk.Frame(self, width=self.winfo_screenwidth(), height=self.winfo_screenheight(), highlightthickness=0)
        self.b5.pack(fill="both", expand=True)
        img = Image.open("./img/chica1.png")
        img = img.resize((self.winfo_screenwidth(), self.winfo_screenheight()), Image.LANCZOS)
        bg = ImageTk.PhotoImage(img)
        self.b5.background = bg
        tk.Label(self.b5, image=bg).place(x=0, y=0, relwidth=1, relheight=1)
        self.b5.pack_forget()

        self.b6 = tk.Frame(self, width=self.winfo_screenwidth(), height=self.winfo_screenheight(), highlightthickness=0)
        self.b6.pack(fill="both", expand=True)
        img = Image.open("./img/chica3.png")
        img = img.resize((self.winfo_screenwidth(), self.winfo_screenheight()), Image.LANCZOS)
        bg = ImageTk.PhotoImage(img)
        self.b6.background = bg
        tk.Label(self.b6, image=bg).place(x=0, y=0, relwidth=1, relheight=1)
        self.b6.pack_forget()

        self.b7 = tk.Frame(self, width=self.winfo_screenwidth(), height=self.winfo_screenheight(), highlightthickness=0)
        self.b7.pack(fill="both", expand=True)
        img = Image.open("./img/eleccionchica1.png")
        img = img.resize((self.winfo_screenwidth(), self.winfo_screenheight()), Image.LANCZOS)
        bg = ImageTk.PhotoImage(img)
        self.b7.background = bg
        tk.Label(self.b7, image=bg).place(x=0, y=0, relwidth=1, relheight=1)
        self.b7.pack_forget()

        self.b8 = tk.Frame(self, width=self.winfo_screenwidth(), height=self.winfo_screenheight(), highlightthickness=0)
        self.b8.pack(fill="both", expand=True)
        img = Image.open("./img/chicamalaeleccion.png")
        img = img.resize((self.winfo_screenwidth(), self.winfo_screenheight()), Image.LANCZOS)
        bg = ImageTk.PhotoImage(img)
        self.b8.background = bg
        tk.Label(self.b8, image=bg).place(x=0, y=0, relwidth=1, relheight=1)
        self.b8.pack_forget()

        self.b9 = tk.Frame(self, width=self.winfo_screenwidth(), height=self.winfo_screenheight(), highlightthickness=0)
        self.b9.pack(fill="both", expand=True)
        img = Image.open("./img/chico1.png")
        img = img.resize((self.winfo_screenwidth(), self.winfo_screenheight()), Image.LANCZOS)
        bg = ImageTk.PhotoImage(img)
        self.b9.background = bg
        tk.Label(self.b9, image=bg).place(x=0, y=0, relwidth=1, relheight=1)
        self.b9.pack_forget()

        self.b10 = tk.Frame(self, width=self.winfo_screenwidth(), height=self.winfo_screenheight(), highlightthickness=0)
        self.b10.pack(fill="both", expand=True)
        img = Image.open("./img/chica5.png")
        img = img.resize((self.winfo_screenwidth(), self.winfo_screenheight()), Image.LANCZOS)
        bg = ImageTk.PhotoImage(img)
        self.b10.background = bg
        tk.Label(self.b10, image=bg).place(x=0, y=0, relwidth=1, relheight=1)
        self.b10.pack_forget()

        self.b11 = tk.Frame(self, width=self.winfo_screenwidth(), height=self.winfo_screenheight(), highlightthickness=0)
        self.b11.pack(fill="both", expand=True)
        img = Image.open("./img/eleccionchica1.png")
        img = img.resize((self.winfo_screenwidth(), self.winfo_screenheight()), Image.LANCZOS)
        bg = ImageTk.PhotoImage(img)
        self.b11.background = bg
        tk.Label(self.b11, image=bg).place(x=0, y=0, relwidth=1, relheight=1)
        self.b11.pack_forget()

        self.b12 = tk.Frame(self, width=self.winfo_screenwidth(), height=self.winfo_screenheight(), highlightthickness=0)
        self.b12.pack(fill="both", expand=True)
        img = Image.open("./img/chicamalaeleccion.png")
        img = img.resize((self.winfo_screenwidth(), self.winfo_screenheight()), Image.LANCZOS)
        bg = ImageTk.PhotoImage(img)
        self.b12.background = bg
        tk.Label(self.b12, image=bg).place(x=0, y=0, relwidth=1, relheight=1)
        self.b12.pack_forget()

        self.b13 = tk.Frame(self, width=self.winfo_screenwidth(), height=self.winfo_screenheight(), highlightthickness=0)
        self.b13.pack(fill="both", expand=True)
        img = Image.open("./img/chica1.png")
        img = img.resize((self.winfo_screenwidth(), self.winfo_screenheight()), Image.LANCZOS)
        bg = ImageTk.PhotoImage(img)
        self.b13.background = bg
        tk.Label(self.b13, image=bg).place(x=0, y=0, relwidth=1, relheight=1)
        self.b13.pack_forget()

        self.bfinal = tk.Frame(self, width=self.winfo_screenwidth(), height=self.winfo_screenheight(), highlightthickness=0)
        self.bfinal.pack(fill="both", expand=True)
        img = Image.open("./img/elec.jpg")
        img = img.resize((self.winfo_screenwidth(), self.winfo_screenheight()), Image.LANCZOS)
        bg = ImageTk.PhotoImage(img)
        self.bfinal.background = bg
        tk.Label(self.bfinal, image=bg).place(x=0, y=0, relwidth=1, relheight=1)
        self.bfinal.pack_forget()
                                          

        '''--------------------------------------CAJAS DE DIALOGO-----------------------------------------------'''


        self.caja_dialogo = ttk.Label(self.b1, text='', style='Mensaje.TLabel')
        self.caja_dialogo.place(relx=0.95, rely=0.01, relwidth=0.75, relheight=0.19, anchor='ne')

        self.caja_dialogo2 = ttk.Label(self.b2, text='', style='Mensaje.TLabel')
        self.caja_dialogo2.place(relx=0.95, rely=0.01, relwidth=0.75, relheight=0.19, anchor='ne')

        self.caja_dialogo3 = ttk.Label(self.b3, text='', style='Mensaje.TLabel')
        self.caja_dialogo3.place(relx=0.95, rely=0.01, relwidth=0.75, relheight=0.19, anchor='ne')

        self.caja_dialogo4 = ttk.Label(self.b4, text='', style='Mensaje.TLabel')#MALA ELECCIONOORDENADOR
        self.caja_dialogo4.place(relx=0.95, rely=0.01, relwidth=0.75, relheight=0.19, anchor='ne')

        self.caja_dialogo5 = ttk.Label(self.b5, text='', style='Mensaje.TLabel')#BUENA ELECCIONOORDENADOR
        self.caja_dialogo5.place(relx=0.95, rely=0.01, relwidth=0.75, relheight=0.19, anchor='ne')

        self.caja_dialogo6 = ttk.Label(self.b6, text='', style='Mensaje.TLabel')
        self.caja_dialogo6.place(relx=0.95, rely=0.01, relwidth=0.75, relheight=0.19, anchor='ne')

        self.caja_dialogo7 = ttk.Label(self.b7, text='', style='Mensaje.TLabel')
        self.caja_dialogo7.place(relx=0.95, rely=0.01, relwidth=0.75, relheight=0.19, anchor='ne')

        self.caja_dialogo8 = ttk.Label(self.b8, text='', style='Mensaje.TLabel')#MALA ELECCIONtelefono
        self.caja_dialogo8.place(relx=0.95, rely=0.01, relwidth=0.75, relheight=0.19, anchor='ne')

        self.caja_dialogo9 = ttk.Label(self.b9, text='', style='Mensaje.TLabel')#BUENA ELECCIONOtelefono
        self.caja_dialogo9.place(relx=0.95, rely=0.01, relwidth=0.75, relheight=0.19, anchor='ne')

        self.caja_dialogo10 = ttk.Label(self.b10, text='', style='Mensaje.TLabel')#BUENA ELECCIONOtelefono
        self.caja_dialogo10.place(relx=0.95, rely=0.01, relwidth=0.75, relheight=0.19, anchor='ne')

        self.caja_dialogo11 = ttk.Label(self.b11, text='', style='Mensaje.TLabel')#BUENA ELECCIONOtelefono
        self.caja_dialogo11.place(relx=0.95, rely=0.01, relwidth=0.75, relheight=0.19, anchor='ne')

        self.caja_dialogo12 = ttk.Label(self.b12, text='', style='Mensaje.TLabel')#BUENA ELECCIONOtelefono
        self.caja_dialogo12.place(relx=0.95, rely=0.01, relwidth=0.75, relheight=0.19, anchor='ne')

        self.caja_dialogo13 = ttk.Label(self.b13, text='', style='Mensaje.TLabel')#BUENA ELECCIONOtelefono
        self.caja_dialogo13.place(relx=0.95, rely=0.01, relwidth=0.75, relheight=0.19, anchor='ne')

        self.caja_dialogofinal = ttk.Label(self.bfinal, text='', style='Mensaje.TLabel')#BUENA ELECCIONOtelefono
        self.caja_dialogofinal.place(relx=0.95, rely=0.01, relwidth=0.75, relheight=0.19, anchor='ne')

        '''--------------------------------------BOTONES DE CONTINUAR-----------------------------------------------'''


        self.btn_siguiente = ttk.Button(self.b1, text="Siguiente", style="Custom.TButton", state="disabled", command=self.siguiente_mensaje)
        self.btn_siguiente.pack(ipadx=0, ipady=0, anchor='e', padx=95, pady=200)

        self.btn_siguiente2 = ttk.Button(self.b2, text="Siguiente", style="Custom.TButton", state="disabled", command=self.siguiente_mensaje2)
        self.btn_siguiente2.pack(ipadx=0, ipady=0, anchor='e', padx=95, pady=200)

        self.btn_siguiente4 = ttk.Button(self.b4, text="Siguiente", style="Custom.TButton", state="disabled", command=self.siguiente_mensaje4)
        self.btn_siguiente4.pack(ipadx=0, ipady=0, anchor='e', padx=95, pady=200)

        self.btn_siguiente5 = ttk.Button(self.b5, text="Siguiente", style="Custom.TButton", state="disabled", command=self.siguiente_mensaje5)
        self.btn_siguiente5.pack(ipadx=0, ipady=0, anchor='e', padx=95, pady=200)

        self.btn_siguiente6 = ttk.Button(self.b6, text="Siguiente", style="Custom.TButton", state="disabled", command=self.siguiente_mensaje6)
        self.btn_siguiente6.pack(ipadx=0, ipady=0, anchor='e', padx=95, pady=200)

        self.btn_siguiente8 = ttk.Button(self.b8, text="Siguiente", style="Custom.TButton", state="disabled", command=self.siguiente_mensaje8)
        self.btn_siguiente8.pack(ipadx=0, ipady=0, anchor='e', padx=95, pady=200)

        self.btn_siguiente9 = ttk.Button(self.b9, text="Siguiente", style="Custom.TButton", state="disabled", command=self.siguiente_mensaje9)
        self.btn_siguiente9.pack(ipadx=0, ipady=0, anchor='e', padx=95, pady=200)

        self.btn_siguiente10 = ttk.Button(self.b10, text="Siguiente", style="Custom.TButton", state="disabled", command=self.siguiente_mensaje10)
        self.btn_siguiente10.pack(ipadx=0, ipady=0, anchor='e', padx=95, pady=200)

        self.btn_siguiente12 = ttk.Button(self.b12, text="Siguiente", style="Custom.TButton", state="disabled", command=self.siguiente_mensaje12)
        self.btn_siguiente12.pack(ipadx=0, ipady=0, anchor='e', padx=95, pady=200)

        self.btn_siguiente13 = ttk.Button(self.b13, text="Siguiente", style="Custom.TButton", state="disabled", command=self.siguiente_mensaje13)
        self.btn_siguiente13.pack(ipadx=0, ipady=0, anchor='e', padx=95, pady=200)

        self.btn_siguientefinal = ttk.Button(self.bfinal, text="Siguiente", style="Custom.TButton", state="disabled", command=self.siguiente_mensajefinal)
        self.btn_siguientefinal.pack(ipadx=0, ipady=0, anchor='e', padx=95, pady=200)


        '''--------------------------------------BOTONES DE ELECCION-----------------------------------------------'''

        self.btn_eleccion1 = ttk.Button(self.b3, text="EleccionMALA", style="Custom2.TButton", command=self.eleccion_mala)
        self.btn_eleccion1.place(relx=0.5, rely=0.9, anchor=tk.CENTER)

        self.btn_eleccion2 = ttk.Button(self.b3, text="EleccionMALA", style="Custom2.TButton", command=self.eleccion_buena)
        self.btn_eleccion2.place(relx=0.5, rely=0.7, anchor=tk.CENTER)

        self.btn_eleccion3 = ttk.Button(self.b3, text="EleccionMALA", style="Custom2.TButton", command=self.eleccion_buena)
        self.btn_eleccion3.place(relx=0.5, rely=0.5, anchor=tk.CENTER)

        self.btn_eleccion4 = ttk.Button(self.b7, text="EleccionMALA", style="Custom2.TButton", command=self.eleccion_mala2)
        self.btn_eleccion4.place(relx=0.5, rely=0.9, anchor=tk.CENTER)

        self.btn_eleccion5 = ttk.Button(self.b7, text="EleccionMALA", style="Custom2.TButton", command=self.eleccion_buena2)
        self.btn_eleccion5.place(relx=0.5, rely=0.7, anchor=tk.CENTER)

        self.btn_eleccion6 = ttk.Button(self.b7, text="EleccionMALA", style="Custom2.TButton", command=self.eleccion_buena2)
        self.btn_eleccion6.place(relx=0.5, rely=0.5, anchor=tk.CENTER)

        self.btn_eleccion7 = ttk.Button(self.b11, text="EleccionMALA", style="Custom2.TButton", command=self.eleccion_mala3)
        self.btn_eleccion7.place(relx=0.5, rely=0.9, anchor=tk.CENTER)

        self.btn_eleccion8 = ttk.Button(self.b11, text="EleccionMALA", style="Custom2.TButton", command=self.eleccion_buena3)
        self.btn_eleccion8.place(relx=0.5, rely=0.7, anchor=tk.CENTER)

        self.btn_eleccion9 = ttk.Button(self.b11, text="EleccionMALA", style="Custom2.TButton", command=self.eleccion_buena3)
        self.btn_eleccion9.place(relx=0.5, rely=0.5, anchor=tk.CENTER)

        '''--------------------------------------BOTONES DE VOLUMEN-----------------------------------------------'''

        self.btn_volumen_up = tk.Button(self.b1, text="Subir volumen", command=self.subir_volumen)
        self.btn_volumen_up.pack(side='right', anchor='se', padx=10, pady=10)
        
        self.btn_volumen_down = tk.Button(self.b1, text="Bajar volumen", command=self.bajar_volumen)
        self.btn_volumen_down.pack(side='right', anchor='se', padx=10, pady=10)



        '''--------------------------------------MENSAJES Y ESCRITURA-----------------------------------------------'''

        self.mensajes = ["Prueba1","Prueba2","Prueba3"]
        self.mensajes2 = ["Estosesb1","b2","b3"]
        self.mensajes3 = ["¿Que debería hacer ALEX?"]
        self.mensajes4 = ["HAS LEGIDO MAL"]
        self.mensajes5 = ["¿HAS LEGIDO bien"]
        self.mensajes6 = ["¿Segunda eleccion","historia de segunda eleccion","Que deberias hacer"]
        self.mensajes7 = ["¿Que debería hacer ALEX?"]
        self.mensajes8 = ["HAS LEGIDO MAL"]
        self.mensajes9 = ["¿HAS LEGIDO bien"]
        self.mensajes10 = ["Estosesb7","b8","b9"]
        self.mensajes11 = ["¿Que debería hacer ALEX?"]
        self.mensajes12 = ["¿HAS LEGIDO MAL?"]
        self.mensajes13 = ["¿HAS LEGIDO bien"]
        self.mensajesfinal = ["GRACIAS POR JUGAR","Eres lo PUTOAMO","ALE A DORMIR QUE ES >TAR>DE"]

        
        


        self.indice_mensaje_actual = 0
        self.indice_mensaje_actual2 = 0
        self.indice_mensaje_actual3 = 0
        self.indice_mensaje_actual4 = 0
        self.indice_mensaje_actual5 = 0
        self.indice_mensaje_actual6 = 0
        self.indice_mensaje_actual7 = 0
        self.indice_mensaje_actual8 = 0
        self.indice_mensaje_actual9 = 0
        self.indice_mensaje_actual10 = 0
        self.indice_mensaje_actual11 = 0
        self.indice_mensaje_actual12 = 0
        self.indice_mensaje_actual13 = 0
        self.indice_mensaje_actualfinal = 0

        self.escribir_mensaje(0)
        self.escribir_mensaje2(0)
        self.escribir_mensaje3(0)
        self.escribir_mensaje4(0)
        self.escribir_mensaje5(0)
        self.escribir_mensaje6(0)
        self.escribir_mensaje7(0)
        self.escribir_mensaje8(0)
        self.escribir_mensaje9(0)
        self.escribir_mensaje10(0)
        self.escribir_mensaje11(0)
        self.escribir_mensaje12(0)
        self.escribir_mensaje13(0)
        self.escribir_mensajefinal(0)

        '''--------------------------------------FUNCIONES DE ESCRIBIR MENSAJES-----------------------------------------------'''

    def escribir_mensaje(self, i):
        if i <= len(self.mensajes[self.indice_mensaje_actual]):
            self.caja_dialogo.config(text=self.mensajes[self.indice_mensaje_actual][:i])
            self.after(3, lambda: self.escribir_mensaje(i+1))
        else:
            # Terminó de escribir el mensaje
            self.btn_siguiente.config(state="normal")  # Habilitar el botón
            pass

    def escribir_mensaje2(self, i):
        if i <= len(self.mensajes2[self.indice_mensaje_actual2]):
            self.caja_dialogo2.config(text=self.mensajes2[self.indice_mensaje_actual2][:i])
            self.after(3, lambda: self.escribir_mensaje2(i+1))
        else:
            # Terminó de escribir el mensaje
            self.btn_siguiente2.config(state="normal")  # Habilitar el botón
            pass

    def escribir_mensaje3(self, i):#ELECCION
        if i <= len(self.mensajes3[self.indice_mensaje_actual3]):
            self.caja_dialogo3.config(text=self.mensajes3[self.indice_mensaje_actual3][:i])
            self.after(3, lambda: self.escribir_mensaje3(i+1))
        else:
            # Terminó de escribir el mensaje
            #self.btn_siguiente3.config(state="normal")  # Habilitar el botón
            pass


    def escribir_mensaje4(self, i):
        if i <= len(self.mensajes4[self.indice_mensaje_actual4]):
            self.caja_dialogo4.config(text=self.mensajes4[self.indice_mensaje_actual4][:i])
            self.after(3, lambda: self.escribir_mensaje4(i+1))
        else:
            # Terminó de escribir el mensaje
            self.btn_siguiente4.config(state="normal")  # Habilitar el botón
            pass


    def escribir_mensaje5(self, i):
        if i <= len(self.mensajes5[self.indice_mensaje_actual5]):
            self.caja_dialogo5.config(text=self.mensajes5[self.indice_mensaje_actual5][:i])
            self.after(3, lambda: self.escribir_mensaje5(i+1))
        else:
            # Terminó de escribir el mensaje
            self.btn_siguiente5.config(state="normal")  # Habilitar el botón
            pass

    def escribir_mensaje6(self, i):
        if i <= len(self.mensajes6[self.indice_mensaje_actual6]):
            self.caja_dialogo6.config(text=self.mensajes6[self.indice_mensaje_actual6][:i])
            self.after(3, lambda: self.escribir_mensaje6(i+1))
        else:
            # Terminó de escribir el mensaje
            self.btn_siguiente6.config(state="normal")  # Habilitar el botón
            pass

    def escribir_mensaje7(self, i):#ELECCION
        if i <= len(self.mensajes7[self.indice_mensaje_actual7]):
            self.caja_dialogo7.config(text=self.mensajes7[self.indice_mensaje_actual7][:i])
            self.after(3, lambda: self.escribir_mensaje7(i+1))
        else:
            # Terminó de escribir el mensaje
            #self.btn_siguiente3.config(state="normal")  # Habilitar el botón
            pass

    def escribir_mensaje8(self, i):#ELECCION
        if i <= len(self.mensajes8[self.indice_mensaje_actual8]):
            self.caja_dialogo8.config(text=self.mensajes8[self.indice_mensaje_actual8][:i])
            self.after(3, lambda: self.escribir_mensaje8(i+1))
        else:
            # Terminó de escribir el mensaje
            self.btn_siguiente8.config(state="normal")  # Habilitar el botón
            pass

    def escribir_mensaje9(self, i):#ELECCION
        if i <= len(self.mensajes9[self.indice_mensaje_actual9]):
            self.caja_dialogo9.config(text=self.mensajes9[self.indice_mensaje_actual9][:i])
            self.after(3, lambda: self.escribir_mensaje9(i+1))
        else:
            # Terminó de escribir el mensaje
            self.btn_siguiente9.config(state="normal")  # Habilitar el botón
            pass

    def escribir_mensaje10(self, i):#ELECCION
        if i <= len(self.mensajes10[self.indice_mensaje_actual10]):
            self.caja_dialogo10.config(text=self.mensajes10[self.indice_mensaje_actual10][:i])
            self.after(3, lambda: self.escribir_mensaje10(i+1))
        else:
            # Terminó de escribir el mensaje
            self.btn_siguiente10.config(state="normal")  # Habilitar el botón
            pass

    def escribir_mensaje11(self, i):#ELECCION
        if i <= len(self.mensajes11[self.indice_mensaje_actual11]):
            self.caja_dialogo11.config(text=self.mensajes11[self.indice_mensaje_actual11][:i])
            self.after(3, lambda: self.escribir_mensaje11(i+1))
        else:
            # Terminó de escribir el mensaje
            #self.btn_siguiente3.config(state="normal")  # Habilitar el botón
            pass

    def escribir_mensaje12(self, i):#ELECCION
        if i <= len(self.mensajes12[self.indice_mensaje_actual12]):
            self.caja_dialogo12.config(text=self.mensajes12[self.indice_mensaje_actual12][:i])
            self.after(3, lambda: self.escribir_mensaje12(i+1))
        else:
            # Terminó de escribir el mensaje
            self.btn_siguiente12.config(state="normal")  # Habilitar el botón
            pass

    def escribir_mensaje13(self, i):#ELECCION
        if i <= len(self.mensajes13[self.indice_mensaje_actual13]):
            self.caja_dialogo13.config(text=self.mensajes13[self.indice_mensaje_actual13][:i])
            self.after(3, lambda: self.escribir_mensaje13(i+1))
        else:
            # Terminó de escribir el mensaje
            self.btn_siguiente13.config(state="normal")  # Habilitar el botón
            pass

    def escribir_mensajefinal(self, i):#ELECCION
        if i <= len(self.mensajesfinal[self.indice_mensaje_actualfinal]):
            self.caja_dialogofinal.config(text=self.mensajesfinal[self.indice_mensaje_actualfinal][:i])
            self.after(3, lambda: self.escribir_mensajefinal(i+1))
        else:
            # Terminó de escribir el mensaje
            self.btn_siguientefinal.config(state="normal")  # Habilitar el botón
            pass

        '''--------------------------------------FUNCIONES DE CONTINUAR Y PASAR TEXTO-----------------------------------------------'''


    def siguiente_mensaje(self):
        self.indice_mensaje_actual += 1
        if self.indice_mensaje_actual < len(self.mensajes):
            self.btn_siguiente.config(state="disabled")  # Deshabilitar el botón
            self.caja_dialogo.config(text='')  # Limpiar la caja de diálogo
            self.escribir_mensaje(0)
        else:
            self.btn_siguiente.config(text="Continuar", command=self.ir_a_b2)  # Deshabilitar el botón
            self.caja_dialogo.config(text="Continua a la siguiente pantalla!")  # Mostrar mensaje de fin

    def siguiente_mensaje2(self):
        self.indice_mensaje_actual2 += 1
        if self.indice_mensaje_actual2 < len(self.mensajes2):
            self.btn_siguiente2.config(state="disabled")  # Deshabilitar el botón
            self.caja_dialogo2.config(text='')  # Limpiar la caja de diálogo
            self.escribir_mensaje2(0)
        else:
            self.btn_siguiente2.config(text="Continuar", command=self.ir_a_b3)  # Deshabilitar el botón
            self.caja_dialogo2.config(text="Continua a la siguiente pantalla!")  # Mostrar mensaje de fin

    def siguiente_mensaje4(self):
        self.indice_mensaje_actual4 += 1
        if self.indice_mensaje_actual4 < len(self.mensajes4):
            self.btn_siguiente4.config(state="disabled")  # Deshabilitar el botón
            self.caja_dialogo4.config(text='')  # Limpiar la caja de diálogo
            self.escribir_mensaje4(0)
        else:
            self.btn_siguiente4.config(text="Continuar", command=self.ir_a_b6)  # Deshabilitar el botón
            self.caja_dialogo4.config(text="Continua a la siguiente pantalla!")  # Mostrar mensaje de fin

    def siguiente_mensaje5(self):
        self.indice_mensaje_actual5 += 1
        if self.indice_mensaje_actual5 < len(self.mensajes5):
            self.btn_siguiente5.config(state="disabled")  # Deshabilitar el botón
            self.caja_dialogo5.config(text='')  # Limpiar la caja de diálogo
            self.escribir_mensaje5(0)
        else:
            self.btn_siguiente5.config(text="Continuar", command=self.ir_a_b6)  # Deshabilitar el botón
            self.caja_dialogo5.config(text="Continua a la siguiente pantalla!")  # Mostrar mensaje de fin

    def siguiente_mensaje6(self):
        self.indice_mensaje_actual6 += 1
        if self.indice_mensaje_actual6 < len(self.mensajes6):
            self.btn_siguiente6.config(state="disabled")  # Deshabilitar el botón
            self.caja_dialogo6.config(text='')  # Limpiar la caja de diálogo
            self.escribir_mensaje6(0)
        else:
            self.btn_siguiente6.config(text="Continuar", command=self.ir_a_b7)  # Deshabilitar el botón
            self.caja_dialogo6.config(text="Continua a la siguiente pantalla!")  # Mostrar mensaje de fin

    def siguiente_mensaje8(self):
        self.indice_mensaje_actual8 += 1
        if self.indice_mensaje_actual8 < len(self.mensajes8):
            self.btn_siguiente8.config(state="disabled")  # Deshabilitar el botón
            self.caja_dialogo8.config(text='')  # Limpiar la caja de diálogo
            self.escribir_mensaje8(0)
        else:
            self.btn_siguiente8.config(text="Continuar", command=self.ir_a_b10)  # Deshabilitar el botón
            self.caja_dialogo8.config(text="Continua a la siguiente pantalla!")  # Mostrar mensaje de fin

    def siguiente_mensaje9(self):
        self.indice_mensaje_actual9 += 1
        if self.indice_mensaje_actual9 < len(self.mensajes9):
            self.btn_siguiente9.config(state="disabled")  # Deshabilitar el botón
            self.caja_dialogo9.config(text='')  # Limpiar la caja de diálogo
            self.escribir_mensaje9(0)
        else:
            self.btn_siguiente9.config(text="Continuar", command=self.ir_a_b10)  # Deshabilitar el botón
            self.caja_dialogo9.config(text="Continua a la siguiente pantalla!")  # Mostrar mensaje de fin

    def siguiente_mensaje10(self):
        self.indice_mensaje_actual10 += 1
        if self.indice_mensaje_actual10 < len(self.mensajes10):
            self.btn_siguiente10.config(state="disabled")  # Deshabilitar el botón
            self.caja_dialogo10.config(text='')  # Limpiar la caja de diálogo
            self.escribir_mensaje10(0)
        else:
            self.btn_siguiente10.config(text="Continuar", command=self.ir_a_b11)  # Deshabilitar el botón
            self.caja_dialogo10.config(text="Continua a la siguiente pantalla!")  # Mostrar mensaje de fin

    def siguiente_mensaje12(self):
        self.indice_mensaje_actual12 += 1
        if self.indice_mensaje_actual12 < len(self.mensajes12):
            self.btn_siguiente12.config(state="disabled")  # Deshabilitar el botón
            self.caja_dialogo12.config(text='')  # Limpiar la caja de diálogo
            self.escribir_mensaje12(0)
        else:
            self.btn_siguiente12.config(text="Continuar", command=self.ir_a_bfinal)  # Deshabilitar el botón
            self.caja_dialogo12.config(text="Continua a la siguiente pantalla!")  # Mostrar mensaje de fin

    def siguiente_mensaje13(self):
        self.indice_mensaje_actual13 += 1
        if self.indice_mensaje_actual13 < len(self.mensajes13):
            self.btn_siguiente13.config(state="disabled")  # Deshabilitar el botón
            self.caja_dialogo13.config(text='')  # Limpiar la caja de diálogo
            self.escribir_mensaje13(0)
        else:
            self.btn_siguiente13.config(text="Continuar", command=self.ir_a_bfinal)  # Deshabilitar el botón
            self.caja_dialogo13.config(text="Continua a la siguiente pantalla!")  # Mostrar mensaje de fin

    def siguiente_mensajefinal(self):
        self.indice_mensaje_actualfinal += 1
        if self.indice_mensaje_actualfinal < len(self.mensajesfinal):
            self.btn_siguientefinal.config(state="disabled")  # Deshabilitar el botón
            self.caja_dialogofinal.config(text='')  # Limpiar la caja de diálogo
            self.escribir_mensajefinal(0)
        else:
            self.btn_siguientefinal.config(text="Continuar", command=self.volver_menu)  # Deshabilitar el botón
            self.caja_dialogofinal.config(text="Continua a la siguiente pantalla!")  # Mostrar mensaje de fin


        '''--------------------------------------FUNCIONES PARA MOVERTE ENTRE PANTALLAS-----------------------------------------------'''


    def ir_a_b2(self):
        self.b1.pack_forget()
        self.b2.pack(fill="both", expand=True)

    def ir_a_b1(self):
        self.bfinal.pack_forget()
        self.b1.pack(fill="both", expand=True)

    def ir_a_b3(self):
        self.b2.pack_forget()
        self.b3.pack(fill="both", expand=True)

    def eleccion_mala(self):
        self.b3.pack_forget()
        self.b4.pack(fill="both", expand=True)

    def eleccion_buena(self):
        self.b3.pack_forget()
        self.b5.pack(fill="both", expand=True)

    def eleccion_mala2(self):
        self.b7.pack_forget()
        self.b8.pack(fill="both", expand=True)

    def eleccion_buena2(self):
        self.b7.pack_forget()
        self.b9.pack(fill="both", expand=True)

    def eleccion_mala3(self):
        self.b11.pack_forget()
        self.b12.pack(fill="both", expand=True)

    def eleccion_buena3(self):
        self.b11.pack_forget()
        self.b13.pack(fill="both", expand=True)

    def ir_a_b6(self):
        self.b4.pack_forget()
        self.b5.pack_forget()
        self.b6.pack(fill="both", expand=True)

    def ir_a_b7(self):
        self.b6.pack_forget()
        self.b7.pack(fill="both", expand=True)

    def ir_a_b8(self):
        self.b7.pack_forget()
        self.b8.pack(fill="both", expand=True)

    def ir_a_b9(self):
        self.b7.pack_forget()
        self.b9.pack(fill="both", expand=True)

    def ir_a_b10(self):
        self.b8.pack_forget()
        self.b9.pack_forget()
        self.b10.pack(fill="both", expand=True)

    def ir_a_b11(self):
        self.b10.pack_forget()
        self.b11.pack(fill="both", expand=True)

    def ir_a_bfinal(self):
        self.b11.pack_forget()
        self.b12.pack_forget()
        self.b13.pack_forget()
        self.bfinal.pack(fill="both", expand=True)

    def ir_a_b13(self):
        self.b11.pack_forget()
        self.b13.pack(fill="both", expand=True)

    def volver_menu(self):
        pygame.mixer.music.stop()
        self.destroy()
        #os.system('python Aventura1.py')
        subprocess.run(['python', 'MENU_PRINCIPAL.py'])

    def subir_volumen(self):
        pygame.mixer.music.set_volume(pygame.mixer.music.get_volume() + 0.1)
        
    def bajar_volumen(self):
        pygame.mixer.music.set_volume(pygame.mixer.music.get_volume() - 0.1)



app = AventuraChica()
app.mainloop()
