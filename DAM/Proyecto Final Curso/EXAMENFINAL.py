import tkinter as tk
from PIL import ImageTk, Image
from tkinter import ttk
from ttkthemes import ThemedTk
import pygame
import subprocess
import sqlite3

'''
La función "init()" dentro de la clase es un método especial de inicialización
que se llama automáticamente cuando se crea un objeto de la clase "Completar".
Este método se utiliza para configurar las propiedades iniciales del objeto.
En este caso, el método "init()" utiliza "super()" para llamar al método "init()" de la clase padre "Tk" y configurar
el objeto con sus propiedades iniciales.

'''

class Examen(tk.Tk):
    def __init__(self):
        super().__init__()
        self.title("Examen")
        self.state('zoomed')
        style = ttk.Style()
        style.theme_use('default')

        #Iniciamos musica, la ponemos en loop

##        pygame.mixer.init()
##        pygame.mixer.music.load("./music/musicaexamen.wav")
##        pygame.mixer.music.play(-1)
##        pygame.mixer.music.play()


        # Crear estilo para botones
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

        # Crear estilo para caja de diálogo
        caja_style = ttk.Style()
        caja_style.configure('Mensaje.TLabel', 
            background='#34495e', 
            foreground='#ffffff', 
            font=('Verdana Bold', 20), 
            padding=10,
            borderwidth=5,
            relief='raised',
        )

        # Frame  con imagen de fondo
        
        self.ex1 = tk.Frame(self, width=self.winfo_screenwidth(), height=self.winfo_screenheight(), highlightthickness=0)
        self.ex1.pack(fill="both", expand=True)
        img = Image.open("./img/examen.png")
        img = img.resize((self.winfo_screenwidth(), self.winfo_screenheight()), Image.LANCZOS)
        bg = ImageTk.PhotoImage(img)
        self.ex1.background = bg
        tk.Label(self.ex1, image=bg).place(x=0, y=0, relwidth=1, relheight=1)

        #Boton  para pasar a la siguiente pregunta

        self.btn_siguiente = ttk.Button(self.ex1, text="Siguiente", style="Custom.TButton",command=self.next_question)
        self.btn_siguiente.pack(ipadx=0, ipady=0, anchor='e', padx=95, pady=200)

        #Boton  para cambiar el volumen

        self.btn_volumen_up = ttk.Button(self.ex1, text="Subir volumen", command=self.subir_volumen, style="BotonSubirVolumen.TButton")
        self.btn_volumen_up.pack(side='right', anchor='se', padx=10, pady=10)
        
        self.btn_volumen_down = ttk.Button(self.ex1, text="Bajar volumen", command=self.bajar_volumen, style="BotonBajarVolumen.TButton")
        self.btn_volumen_down.pack(side='right', anchor='se', padx=10, pady=10)

        '''----------------------------------------AREA DE PREGUNTAS-------------------------------------------------------'''

        #Creamos un indice para las preguntas

        self.question_index = 0

        #Creamos las propias preguntas
        
        self.questions = [
            
            "HOLA¡ Soy BATMAN¡ Es hora de tu examen FINAL\nPara empezar, ¿Cómo te llamas?\nEscribe solo el nombre, los tipos duros como yo sólo necesitamos eso",
            "Bien, ahora la primera pregunta de verdad\n¿Qué es el acoso escolar?",
            "¿Cómo se siente alguien que está siendo acosado?",
            "¿Por qué crees que algunas personas acosan a otras?",
            "¿Cómo podemos ayudar a alguien que está siendo acosado?",
            "¿Qué consecuencias puede tener el acoso escolar?",
            "¿Qué medidas se pueden tomar para prevenir el acoso escolar?",
            "¿Qué se debe hacer si presenciamos un caso de acoso escolar?",
            "¿Cómo podemos ser buenos amigos y apoyar a quienes están siendo acosados?",
            "¿Qué acciones podemos tomar para crear un ambiente escolar seguro y acogedor para todos?",
            "Muchas gracias por participar!\nSi quieres, puedes añadir una nota dejando tu opinión libre sobre lo que has aprendido este curso.\nNos vemos en GOTHAM!"  
        ]

        #Creamos un arreglo en el que se guardaran las respuestas
        
        self.responses = []

        # Crear la conexión a la base de datos
        
        self.conn = sqlite3.connect("respuestas.db")
        self.c = self.conn.cursor()
        
        # Crear la tabla si no existe
        
        self.c.execute('''CREATE TABLE IF NOT EXISTS examen
                                (id INTEGER PRIMARY KEY AUTOINCREMENT,
                                nombre TEXT,
                                pregunta1 TEXT,
                                pregunta2 TEXT,
                                pregunta3 TEXT,
                                pregunta4 TEXT,
                                pregunta5 TEXT,
                                pregunta6 TEXT,
                                pregunta7 TEXT,
                                pregunta8 TEXT,
                                pregunta9 TEXT,
                                pregunta10 TEXT,
                                pregunta11 TEXT)''')

        #Caja para escribir las preguntas
        
        self.caja_dialogo = ttk.Label(self.ex1, text=self.questions[self.question_index], style='Mensaje.TLabel')  
        self.caja_dialogo.place(relx=0.95, rely=0.01, relwidth=0.75, relheight=0.19, anchor='ne')

        #Caja para escribir las respuestas

        self.response_entry = tk.Text(self.ex1,width=85,height=16,bg='#f0f3f4', fg='black', font=('Hey Comic', 21), bd=3, relief='solid', insertwidth=6, insertbackground='black')
        self.response_entry.place(relx=0.5, rely=0.6, anchor='center')

    '''
    FUNCION NEXTQUESTION
    
    - Obtiene la respuesta que el usuario escribió en la caja de texto y la agrega a una lista llamada responses utilizando el método append().
    - Borra el contenido de la caja de texto utilizando el método delete().
    - Incrementa el índice de la pregunta actual question_index en una unidad.
    - Si todavía hay preguntas por responder (if self.question_index < len(self.questions):),
    actualiza el texto de la caja de diálogo (self.caja_dialogo.config(text=self.questions[self.question_index])) con la pregunta siguiente.
    - Si ya se respondieron todas las preguntas, guarda las respuestas en algún lugar (self.save_responses()) y destruye la ventana que contiene el cuestionario (self.destroy()).
    
    '''

    def next_question(self):
        self.responses.append(self.response_entry.get("1.0", "end"))
        self.response_entry.delete("1.0", tk.END)

        self.question_index += 1
        if self.question_index < len(self.questions):
            self.caja_dialogo.config(text=self.questions[self.question_index])
        else:
            self.save_responses()
            self.destroy()

    '''
    FUNCION SAVERESPONSES
    
    Primero, se utiliza el método execute() del objeto c para ejecutar una consulta SQL que inserta las respuestas en la tabla examen.
    La consulta utiliza una sintaxis de marcadores de posición para que los valores de las respuestas se agreguen de forma segura a la consulta.
    Luego, se utiliza el método commit() del objeto conn para guardar los cambios realizados en la base de datos.
    Finalmente, se utiliza el método close() del objeto conn para cerrar la conexión con la base de datos.
    '''

    def save_responses(self):
        # Insertar las respuestas en la tabla
        self.c.execute("INSERT INTO examen (nombre, pregunta1, pregunta2, pregunta3 ,pregunta4, pregunta5, pregunta6, pregunta7, pregunta8, pregunta9, pregunta10, pregunta11) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)", (self.responses[0], self.responses[1], self.responses[2], self.responses[3], self.responses[4], self.responses[5], self.responses[6], self.responses[7], self.responses[8], self.responses[9], self.responses[10], self.responses[11]))
        self.conn.commit()
        self.conn.close()

    #Funciones para cambiar el volumen

    def subir_volumen(self):
        pygame.mixer.music.set_volume(pygame.mixer.music.get_volume() + 0.1)

    def bajar_volumen(self):
        pygame.mixer.music.set_volume(pygame.mixer.music.get_volume() - 0.1)


root = Examen()
root.mainloop()
        
