import tkinter as tk
from PIL import ImageTk, Image
from tkinter import ttk
from ttkthemes import ThemedTk
import pygame
import subprocess

'''La función "init()" dentro de la clase es un método especial de inicialización
que se llama automáticamente cuando se crea un objeto de la clase "Completar".
Este método se utiliza para configurar las propiedades iniciales del objeto.
En este caso, el método "init()" utiliza "super()" para llamar al método "init()" de la clase padre "Tk" y configurar
el objeto con sus propiedades iniciales.
'''

# Creamos la ventana principal
class Completar(tk.Tk):
    def __init__(self):
        super().__init__()
        self.title("Completa los huecos")
        self.state('zoomed')
        style = ttk.Style()
        style.theme_use('default')

        #Iniciamos el sonido

##        pygame.mixer.init()
##        pygame.mixer.music.load("./music/9bit/xDeviruchi - The Icy Cave .wav")
##        pygame.mixer.music.play(-1)
##        pygame.mixer.music.play()

        # Crear estilo para botones
        style.map('Custom.TButton', foreground=[('active', '!disabled', 'white'), ('pressed', 'white')],#con map controlamos el boton en funcion de su estado
                  background=[('active', '#FFA500'), ('pressed', '#2980b9')])
        style.configure('Custom.TButton',                                                                                   #Aqui configuramos la estetica del boton, asi como sus propiedades
                font=('Life is goofy', 30), 
                borderwidth=4, highlightbackground='white',
                relief="solid", 
                foreground="black", 
                background="#40E0D0", 
                padding=11, 
                width=50,
                height=60,
                borderround=10)

        style.map('BotonPosibleRespuesta.TButton', foreground=[('active', '!disabled', 'white'), ('pressed', 'white')],
                  background=[('active', '#85c1e9'), ('pressed', '#2980b9')])
        style.configure('BotonPosibleRespuesta.TButton', 
                font=('LT Staircase', 20), 
                borderwidth=4, highlightbackground='white',
                relief="solid", 
                foreground="black", 
                background="#85c1e9", 
                padding=11, 
                width=25,
                height=50,
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

        # Estilo de caja diálogo
        
        caja_style = ttk.Style()
        caja_style.configure('Mensaje.TLabel', 
            background='#34495e', 
            foreground='#ffffff', 
            font=('LT Staircase', 20), 
            padding=10,
            borderwidth=5,
            relief='raised')

        # Estilo de los labels

        # Abrimos canvas con imagen de fondo
        
        self.completar = tk.Frame(self, width=self.winfo_screenwidth(), height=self.winfo_screenheight(), highlightthickness=0)
        self.completar.pack(fill="both", expand=True)
        img = Image.open("./img/Completahuecos.png")
        img = img.resize((self.winfo_screenwidth(), self.winfo_screenheight()), Image.LANCZOS)
        bg = ImageTk.PhotoImage(img)
        self.completar.background = bg
        tk.Label(self.completar, image=bg).place(x=0, y=0, relwidth=1, relheight=1)

        #Caja de guia y bienvenida
        
        self.caja_dialogo = ttk.Label(self.completar, text="Hola! Soy la Capitana AntiBullying, te apetece jugar?\nSolo tienes que ir rellenando los espacios con las palabras\nsugeridas para completar el juego\Buena Suerte!!", style='Mensaje.TLabel')  
        self.caja_dialogo.place(relx=0.95, rely=0.01, relwidth=0.75, relheight=0.19, anchor='ne')

        #Creamos las entradas y las colocamos

        self.entrada1 = tk.Entry(self.completar, justify="center", width=30,font=('LT Staircase', 18))
        self.entrada2 = tk.Entry(self.completar, justify="center", width=30,font=('LT Staircase', 18))
        self.entrada3 = tk.Entry(self.completar, justify="center", width=30,font=('LT Staircase', 18))

        self.entrada1.place(relx=0.3, rely=0.45, anchor=tk.CENTER)
        self.entrada2.place(relx=0.5, rely=0.45, anchor=tk.CENTER)
        self.entrada3.place(relx=0.7, rely=0.45, anchor=tk.CENTER)

        #Label para las frases

        self.frase1 = tk.Label(self.completar, font=('LT Staircase', 20), relief="solid",
                          width=80, height=3,borderwidth= 10, bg="#d6dbdf",
                          text="El _____ es un comportamiento _____ y repetitivo que se dirige hacia una persona _____.")
        self.frase1.place(relx=0.5, rely=0.32, anchor=tk.CENTER)

        #Label para las posibles respuestas

        self.respuestas1 = tk.Label(self.completar, font=('LT Staircase', 20), relief="solid",
                               width=50, height=3,borderwidth= 10, bg="#d6dbdf",
                               text="agresivo, vulnerable, bullying")
        self.respuestas1.place(relx=0.5, rely=0.60, anchor=tk.CENTER)

        #Label para decirle al usuario si a acertado o no

        self.resultado = tk.Label(self.completar, text="", font=('LT Staircase', 20),relief="solid",width=40, height=2,bg="#d6dbdf")

        #Botones relacionados con funciones, comprobar y siguiente pregunta

        boton_comprobar = ttk.Button(self.completar, text="Comprobar", command=self.comprobar_respuesta, style="BotonPosibleRespuesta.TButton")
        boton_comprobar.place(relx=0.397, rely=0.70, anchor=tk.CENTER)
        self.boton_siguiente = ttk.Button(self.completar, text="Siguiente", command=self.siguiente_pregunta,style="BotonPosibleRespuesta.TButton")

        #Boton  para cambiar el volumen

        self.btn_volumen_up = ttk.Button(self.completar, text="Subir volumen", command=self.subir_volumen, style="BotonSubirVolumen.TButton")
        self.btn_volumen_up.pack(side='right', anchor='se', padx=10, pady=10)
        
        self.btn_volumen_down = ttk.Button(self.completar, text="Bajar volumen", command=self.bajar_volumen, style="BotonBajarVolumen.TButton")
        self.btn_volumen_down.pack(side='right', anchor='se', padx=10, pady=10)
        

    def comprobar_respuesta(self):
        # Obtenemos las respuestas del usuario
        respuestas = [self.entrada1.get(), self.entrada2.get(), self.entrada3.get()]

        # Definimos las respuestas correctas
        # Hacemos las respuestas sencillas para las pruebas

        #respuestas_correctas1= ["bullying", "agresivo", "vulnerable"]
        #respuestas_correctas2= ["formas","agresiones","psicologicas"]
        #respuestas_correctas3= ["consecuencias", "victima", "ansiedad"]
        respuestas_correctas4= ["ocurrir", "lugar", "linea"]
        respuestas_correctas5= ["prevenido", "educación", "seguro"]
        respuestas_correctas6= ["hablar", "denunciar", "apoyo"]
        respuestas_correctas1= ["1", "2", "3"]
        respuestas_correctas2= ["4", "5", "6"]
        respuestas_correctas3= ["7", "8", "9"]
##        respuestas_correctas4= ["10", "11", "12"]
##        respuestas_correctas5= ["13", "14", "15"]
##        respuestas_correctas6= ["16", "17", "18"]

        # Verificamos las respuestas
        if respuestas == respuestas_correctas1:
            self.resultado.place(relx=0.5, rely=0.80, anchor=tk.CENTER)
            self.resultado.config(text="¡Respuesta correcta!", bg="#2ecc71")
            self.boton_siguiente.place(relx=0.6, rely=0.70, anchor=tk.CENTER)
            
        elif respuestas == respuestas_correctas2:
            self.resultado.place(relx=0.5, rely=0.80, anchor=tk.CENTER)
            self.resultado.config(text="¡Respuesta correcta!", bg="#2ecc71")
            self.boton_siguiente.config(command=self.siguiente_pregunta2)
            self.boton_siguiente.place(relx=0.6, rely=0.70, anchor=tk.CENTER)
            
        elif respuestas == respuestas_correctas3:
            self.resultado.place(relx=0.5, rely=0.80, anchor=tk.CENTER)
            self.resultado.config(text="¡Respuesta correcta!", bg="#2ecc71")
            self.boton_siguiente.config(command=self.siguiente_pregunta3)
            self.boton_siguiente.place(relx=0.6, rely=0.70, anchor=tk.CENTER)

        elif respuestas == respuestas_correctas4:
            self.resultado.place(relx=0.5, rely=0.80, anchor=tk.CENTER)
            self.resultado.config(text="¡Respuesta correcta!", bg="#2ecc71")
            self.boton_siguiente.config(command=self.siguiente_pregunta4)
            self.boton_siguiente.place(relx=0.6, rely=0.70, anchor=tk.CENTER)

        elif respuestas == respuestas_correctas5:
            self.resultado.place(relx=0.5, rely=0.80, anchor=tk.CENTER)
            self.resultado.config(text="¡Respuesta correcta!", bg="#2ecc71")
            self.boton_siguiente.config(command=self.siguiente_pregunta5)
            self.boton_siguiente.place(relx=0.6, rely=0.70, anchor=tk.CENTER)

        elif respuestas == respuestas_correctas6:
            self.resultado.place(relx=0.5, rely=0.80, anchor=tk.CENTER)
            self.resultado.config(text="¡Respuesta correcta!", bg="#2ecc71")
            self.boton_siguiente.config(command=self.siguiente_pregunta6)
            self.boton_siguiente.place(relx=0.6, rely=0.70, anchor=tk.CENTER)

        else:
            self.resultado.place(relx=0.5, rely=0.80, anchor=tk.CENTER)
            self.resultado.config(text="Respuesta incorrecta, inténtalo de nuevo.",bg="#ec7063")

    def siguiente_pregunta(self):
        self.caja_dialogo.config(text="Vamos con la segunda pregunta!!")
        self.frase1.config(text="El bullying puede tomar muchas _____, incluyendo _____ físicas, verbales, _____ y cibernéticas.")
        self.respuestas1.config(text="psicológicas,formas,agresiones")
        self.entrada1.delete(0, tk.END)
        self.entrada2.delete(0, tk.END)
        self.entrada3.delete(0, tk.END)
        self.resultado.place_forget()
        self.boton_siguiente.place_forget()

    def siguiente_pregunta2(self):
        self.caja_dialogo.config(text="Vamos con la tercera pregunta!!")
        self.frase1.config(text="El bullying puede tener _____ graves para la salud mental y física de la _____,\nincluyendo _____, depresión y estrés postraumático.")
        self.respuestas1.config(text="ansiedad,victima,consecuencias")
        self.entrada1.delete(0, tk.END)
        self.entrada2.delete(0, tk.END)
        self.entrada3.delete(0, tk.END)
        self.resultado.place_forget()
        self.boton_siguiente.place_forget()

    def siguiente_pregunta3(self):
        self.caja_dialogo.config(text="Vamos con la cuarta pregunta!!")
        self.frase1.config(text="El bullying puede ______ en cualquier _____, como en la escuela, en el lugar de trabajo o en ______.")
        self.respuestas1.config(text="ocurrir,línea,lugar")
        self.entrada1.delete(0, tk.END)
        self.entrada2.delete(0, tk.END)
        self.entrada3.delete(0, tk.END)
        self.resultado.place_forget()
        self.boton_siguiente.place_forget()

    def siguiente_pregunta4(self):
        self.caja_dialogo.config(text="Vamos con la quinta pregunta!!")
        self.frase1.config(text="El bullying puede ser _____ mediante la _____ y la creación de un ambiente _____ y acogedor.")
        self.respuestas1.config(text="seguro,educación,prevenido")
        self.entrada1.delete(0, tk.END)
        self.entrada2.delete(0, tk.END)
        self.entrada3.delete(0, tk.END)
        self.resultado.place_forget()
        self.boton_siguiente.place_forget()

    def siguiente_pregunta5(self):
        self.caja_dialogo.config(text="Vamos con la sexta pregunta!!")
        self.frase1.config(text="Es importante _____ sobre el bullying y tomar medidas para detenerlo,\nincluyendo _____ el comportamiento y brindar _____ a las víctimas.")
        self.respuestas1.config(text="denunciar,hablar,apoyo")
        self.entrada1.delete(0, tk.END)
        self.entrada2.delete(0, tk.END)
        self.entrada3.delete(0, tk.END)
        self.resultado.place_forget()
        self.boton_siguiente.place_forget()

    def siguiente_pregunta6(self):
        self.caja_dialogo.config(text="FELICIDADES!! HAS TERMINADO EL JUEGO")
        self.frase1.config(text="Pulsa el boton siguiente para volver al menu principal!")
        self.respuestas1.config(text="Muchas gracias por jugar!!!")
        self.entrada1.delete(0, tk.END)
        self.entrada2.delete(0, tk.END)
        self.entrada3.delete(0, tk.END)
        self.resultado.place_forget()
        self.boton_siguiente.config(command=self.abrir_menu)

    #Funciones para cambiar el volumen

    def subir_volumen(self):
        pygame.mixer.music.set_volume(pygame.mixer.music.get_volume() + 0.1)

    def bajar_volumen(self):
        pygame.mixer.music.set_volume(pygame.mixer.music.get_volume() - 0.1)

    #Funcion para volver al menu principal

    def abrir_menu(self):
        self.destroy()
        subprocess.run(['python', 'MENU_PRINCIPAL.py'])


root = Completar()
root.mainloop()
