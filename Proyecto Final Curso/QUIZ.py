import tkinter as tk
from PIL import ImageTk, Image
from tkinter import ttk
from ttkthemes import ThemedTk
import pygame
import subprocess


class Preguntas(tk.Tk):
    def __init__(self):
        super().__init__()
        self.title("Preguntas")
        self.state('zoomed')
        style = ttk.Style()
        style.theme_use('default')
        
        pygame.mixer.init()
        pygame.mixer.music.load("./music/9bit/xDeviruchi - The Icy Cave .wav")
        pygame.mixer.music.play(-1)
        pygame.mixer.music.play()
        
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
                width=50,
                height=60,
                borderround=10)

        style.map('BotonSubirVolumen.TButton', foreground=[('active', '!disabled', 'white'), ('pressed', 'white')],
                  background=[('active', '#FFA500'), ('pressed', '#2980b9')])
        
        style.configure('BotonSubirVolumen.TButton', 
                font=('Life is goofy', 22), 
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
                font=('Life is goofy', 22), 
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
            font=('LT Staircase', 20), 
            padding=10,
            borderwidth=5,
            relief='raised')

        # Frame  con imagen de fondo
        self.preguntas = tk.Frame(self, width=self.winfo_screenwidth(), height=self.winfo_screenheight(), highlightthickness=0)
        self.preguntas.pack(fill="both", expand=True)
        img = Image.open("./img/fondopreguntas.png")
        img = img.resize((self.winfo_screenwidth(), self.winfo_screenheight()), Image.LANCZOS)
        bg = ImageTk.PhotoImage(img)
        self.preguntas.background = bg
        tk.Label(self.preguntas, image=bg).place(x=0, y=0, relwidth=1, relheight=1)

        self.questions = [
                                "Hola¡ Soy IRONBULLIYNG¡\nVamos a comprobar lo que has aprendido¡\n¿Qué es el acoso escolar?",
                                "Pregunta 2:\n¿Cuál es una forma de ayudar a alguien que está siendo acosado?",
                                "Pregunta 3:\n¿Quién puede ser un acosador?",
                                "Pregunta 4:\n¿Por qué las personas acosan a otros?",
                                "Pregunta 5:\n¿Cómo puedes ayudar a prevenir el acoso escolar?",
                                "Pregunta 6:\n¿Cómo te sientes cuando eres acosado?",
                                "Pregunta 7:\n¿Cómo puedes ayudar a alguien que está siendo acosado?",
                                "Pregunta 8:\n¿Cómo puedes detener a alguien que está acosando a otro niño?"
                                ]

        
        self.answers = [
                                ["Una forma de hacer amigos",
                                 "Hacer bromas divertidas a otros niños",
                                 "Un comportamiento agresivo e intencional que se repite a lo largo del tiempo"
                                 ],
                                
                                ["Unirse a los acosadores para evitar que lo ataquen a uno",
                                 "Ignorar el problema y dejar que la persona afectada se las arregle sola",
                                 "Decirle a un adulto de confianza lo que está sucediendo",
                                 ],
                                
                                [" Solo los niños mayores",
                                 "Cualquier persona que intencionalmente lastima a otros",
                                 "Solo los niños que son más fuertes que otros niños",
                                 ],
                                ["Para sentirse poderosos o superiores a otros",
                                 "Para hacer amigos",
                                 "Porque están aburridos y necesitan entretenerse",
                                 ],
                                ["Ignorando a los demás y concentrándote solo en ti mismo",
                                 "Siendo amable y respetuoso con los demás",
                                 "Uniendo a otros niños para hacer bromas divertidas a otros niños",
                                 ],
                                ["Muy feliz y emocionado",
                                 "Asustado, triste o enojado",
                                 "No te importa lo que está sucediendo",
                                 ],
                                ["Unirte a los acosadores para evitar que lo ataquen a uno",
                                 "Ignorar el problema",
                                 "Apoyar y consolar a la persona afectada",
                                 ],
                                ["Golpear al acosador para hacerle saber que no está bien acosar a otros",
                                 "Decirle a un adulto de confianza lo que está sucediendo",
                                 "Dejar que la persona afectada se las arregle sola",
                                 ]
                              ]

        
        self.correct_answers = [
                                            "Un comportamiento agresivo e intencional que se repite a lo largo del tiempo",
                                            "Decirle a un adulto de confianza lo que está sucediendo",
                                            "Cualquier persona que intencionalmente lastima a otros",
                                            "Para sentirse poderosos o superiores a otros",
                                            "Siendo amable y respetuoso con los demás",
                                            "Asustado, triste o enojado",
                                            "Apoyar y consolar a la persona afectada",
                                            "Decirle a un adulto de confianza lo que está sucediendo"
                                          ]

        
        self.current_question = 0

        #Caja para escribir las preguntas
        
        self.caja_dialogo = ttk.Label(self.preguntas, text=self.questions[self.current_question], style='Mensaje.TLabel')  
        self.caja_dialogo.place(relx=0.95, rely=0.01, relwidth=0.75, relheight=0.19, anchor='ne')

        #Label para informar del resultado

        self.resultado_label = tk.Label(self.preguntas, text="", font=('Life is goofy', 30), bd=6, width=40, height=4, highlightbackground="black")
        

        #Boton siguiente pregunta

        self.siguiente_boton = ttk.Button(self.preguntas, text="Siguiente",  style="Custom.TButton", command=self.siguiente_pregunta)
        self.siguiente_boton.place(relx=0.5, rely=0.87, anchor=tk.CENTER)

        #Boton FIn juego

        self.boton_volver_menu = ttk.Button(self.preguntas, text="Volver al Menú Principal", style="Custom.TButton", command=self.abrir_menu)


        #Botones para las respuestas

        self.answer_a = ttk.Button(self.preguntas, text=self.answers[self.current_question][0], style="Custom.TButton", command=lambda: self.check_answer(self.answers[self.current_question][0]))
        self.answer_a.place(relx=0.5, rely=0.32, anchor=tk.CENTER)
        self.answer_b = ttk.Button(self.preguntas, text=self.answers[self.current_question][1], style="Custom.TButton", command=lambda: self.check_answer(self.answers[self.current_question][1]))
        self.answer_b.place(relx=0.5, rely=0.42, anchor=tk.CENTER)
        self.answer_c = ttk.Button(self.preguntas, text=self.answers[self.current_question][2], style="Custom.TButton", command=lambda: self.check_answer(self.answers[self.current_question][2]))
        self.answer_c.place(relx=0.5, rely=0.52, anchor=tk.CENTER)
 

        
        #Boton  para cambiar el volumen

        self.btn_volumen_up = ttk.Button(self.preguntas, text="Subir volumen", style="BotonSubirVolumen.TButton", command=self.subir_volumen)
        self.btn_volumen_up.place(relx=0.91, rely=0.92, anchor=tk.CENTER)
        
        self.btn_volumen_down = ttk.Button(self.preguntas, text="Bajar volumen", style="BotonBajarVolumen.TButton", command=self.bajar_volumen)
        self.btn_volumen_down.place(relx=0.81, rely=0.92, anchor=tk.CENTER)
        

    def check_answer(self, answer):
        if answer == self.correct_answers[self.current_question]:
            resultado = "¡Correcto!"
            self.resultado_label.place(relx=0.5, rely=0.68, anchor=tk.CENTER)
            self.resultado_label.configure(bg="lightgreen")
            
        else:
            resultado = "Lo siento, esa respuesta es incorrecta."
            self.resultado_label.place(relx=0.5, rely=0.68, anchor=tk.CENTER)
            self.resultado_label.configure(bg="#e74c3c")
            
        
        self.resultado_label.config(text=resultado)
        
        

    def siguiente_pregunta(self):
        
        self.current_question += 1
    

        if self.current_question < len(self.questions):
            self.caja_dialogo.config(text=self.questions[self.current_question])
            self.answer_a.config(text=self.answers[self.current_question][0], command=lambda: self.check_answer(self.answers[self.current_question][0]))
            self.answer_b.config(text=self.answers[self.current_question][1], command=lambda: self.check_answer(self.answers[self.current_question][1]))
            self.answer_c.config(text=self.answers[self.current_question][2], command=lambda: self.check_answer(self.answers[self.current_question][2]))
            self.resultado_label.config(text="")
            
        else:
            self.caja_dialogo.config(text="Fin del juego")
            self.boton_volver_menu.place(relx=0.5, rely=0.87, anchor=tk.CENTER)
            self.answer_a.pack_forget()
            self.answer_b.pack_forget()
            self.answer_c.pack_forget()
            self.resultado_label.pack_forget()
            self.siguiente_button.pack_forget()

        self.resultado_label.place_forget()
        
    #Funciones para cambiar el volumen

    def subir_volumen(self):
        pygame.mixer.music.set_volume(pygame.mixer.music.get_volume() + 0.1)
        
    def bajar_volumen(self):
        pygame.mixer.music.set_volume(pygame.mixer.music.get_volume() - 0.1)

    #Funciones para volver al menu principal

    def abrir_menu(self):
        self.destroy()
        subprocess.run(['python', 'MENU_PRINCIPAL.py'])


'''
PAra mandarte al menu principal, o a la pantalla de felicitaciones

def mostrar_menu_principal(self):
        self.frame_menu.tkraise()
        
    def finalizar_juego(self):
        tk.messagebox.showinfo("Fin del juego", "¡Has terminado el juego!")
        self.mostrar_menu_principal()

'''


root = Preguntas()
root.mainloop()
