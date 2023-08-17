import tkinter as tk
from PIL import ImageTk, Image
from tkinter import ttk
from ttkthemes import ThemedTk
import pygame
import subprocess


class App(tk.Tk):
    def __init__(self):
        super().__init__()
        self.title("Aventura")
        self.state('zoomed')
        # Crear estilo Bootstrap
        style = ttk.Style()
        style.theme_use('default')
        
        pygame.mixer.init()
        pygame.mixer.music.load(r"./music/9bit/xDeviruchi - Take some rest and eat some food!.wav")
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
                width=12,
                height=60,
                borderround=10)
        # Crear estilo para caja de diálogo
        caja_style = ttk.Style()
        caja_style.configure('Mensaje.TLabel', 
            background='black', 
            foreground='#ffffff', 
            font=('Vanilla Caramel', 20), 
            padding=10,
            borderwidth=5,
            relief='raised',
        )

        # Frame a1 con imagen de fondo
        self.a1 = tk.Frame(self, width=self.winfo_screenwidth(), height=self.winfo_screenheight(), highlightthickness=0)
        self.a1.pack(fill="both", expand=True)
        img = Image.open("./img/Tierra.png")
        img = img.resize((self.winfo_screenwidth(), self.winfo_screenheight()), Image.LANCZOS)
        bg = ImageTk.PhotoImage(img)
        self.a1.background = bg
        tk.Label(self.a1, image=bg).place(x=0, y=0, relwidth=1, relheight=1)

         # Frame a2 con imagen de fondo
        self.a2 = tk.Frame(self, width=self.winfo_screenwidth(), height=self.winfo_screenheight(), highlightthickness=0)
        self.a2.pack(fill="both", expand=True)
        img = Image.open("./img/cam1.png")
        img = img.resize((self.winfo_screenwidth(), self.winfo_screenheight()), Image.LANCZOS)
        bg = ImageTk.PhotoImage(img)
        self.a2.background = bg
        tk.Label(self.a2, image=bg).place(x=0, y=0, relwidth=1, relheight=1)
        self.a2.pack_forget()

        self.a3 = tk.Frame(self, width=self.winfo_screenwidth(), height=self.winfo_screenheight(), highlightthickness=0)
        self.a3.pack(fill="both", expand=True)
        img = Image.open("./img/cam2.png")
        img = img.resize((self.winfo_screenwidth(), self.winfo_screenheight()), Image.LANCZOS)
        bg = ImageTk.PhotoImage(img)
        self.a3.background = bg
        tk.Label(self.a3, image=bg).place(x=0, y=0, relwidth=1, relheight=1)
        self.a3.pack_forget()

        self.a4 = tk.Frame(self, width=self.winfo_screenwidth(), height=self.winfo_screenheight(), highlightthickness=0)
        self.a4.pack(fill="both", expand=True)
        img = Image.open("./img/cam3.png")
        img = img.resize((self.winfo_screenwidth(), self.winfo_screenheight()), Image.LANCZOS)
        bg = ImageTk.PhotoImage(img)
        self.a4.background = bg
        tk.Label(self.a4, image=bg).place(x=0, y=0, relwidth=1, relheight=1)
        self.a4.pack_forget()

        self.a5 = tk.Frame(self, width=self.winfo_screenwidth(), height=self.winfo_screenheight(), highlightthickness=0)
        self.a5.pack(fill="both", expand=True)
        img = Image.open("./img/elec.png")
        img = img.resize((self.winfo_screenwidth(), self.winfo_screenheight()), Image.LANCZOS)
        bg = ImageTk.PhotoImage(img)
        self.a5.background = bg
        tk.Label(self.a5, image=bg).place(x=0, y=0, relwidth=1, relheight=1)
        self.a5.pack_forget()



        ''' ----------------------- -------------------------CREACION CAJAS DE DIALOGO Y BOTONES  ------------------------------------------------------------------'''

        self.caja_dialogo = ttk.Label(self.a1, text='', style='Mensaje.TLabel')
        self.caja_dialogo.place(relx=0.95, rely=0.01, relwidth=0.75, relheight=0.19, anchor='ne')

        self.caja_dialogo2 = ttk.Label(self.a2, text='', style='Mensaje.TLabel')
        self.caja_dialogo2.place(relx=0.95, rely=0.01, relwidth=0.75, relheight=0.18, anchor='ne')

        self.caja_dialogo3 = ttk.Label(self.a3, text='', style='Mensaje.TLabel')
        self.caja_dialogo3.place(relx=0.95, rely=0.01, relwidth=0.75, relheight=0.18, anchor='ne')

        self.caja_dialogo4 = ttk.Label(self.a4, text='', style='Mensaje.TLabel')
        self.caja_dialogo4.place(relx=0.95, rely=0.01, relwidth=0.75, relheight=0.18, anchor='ne')

        self.caja_dialogo5 = ttk.Label(self.a5, text='', style='Mensaje.TLabel')
        self.caja_dialogo5.place(relx=0.95, rely=0.01, relwidth=0.75, relheight=0.18, anchor='ne')

        self.btn_siguiente = ttk.Button(self.a1, text="Siguiente", style="Custom.TButton", state="disabled", command=self.siguiente_mensaje)
        self.btn_siguiente.pack(ipadx=0, ipady=0, anchor='e', padx=95, pady=200)

        self.btn_siguiente2 = ttk.Button(self.a2, text="Siguiente", style="Custom.TButton", state="disabled", command=self.siguiente_mensaje2)
        self.btn_siguiente2.pack(ipadx=0, ipady=0, anchor='e', padx=95, pady=200)

        self.btn_siguiente3 = ttk.Button(self.a3, text="Siguiente", style="Custom.TButton", state="disabled", command=self.siguiente_mensaje3)
        self.btn_siguiente3.pack(ipadx=0, ipady=0, anchor='e', padx=95, pady=200)

        self.btn_siguiente4 = ttk.Button(self.a4, text="Siguiente", style="Custom.TButton", state="disabled", command=self.siguiente_mensaje4)
        self.btn_siguiente4.pack(ipadx=0, ipady=0, anchor='e', padx=95, pady=200)

        self.btn_siguiente5 = ttk.Button(self.a5, text="Siguiente", style="Custom.TButton", state="disabled", command=self.siguiente_mensaje5)
        self.btn_siguiente5.pack(ipadx=0, ipady=0, anchor='e', padx=95, pady=200)

        self.btn_chico = ttk.Button(self.a5, text="ALEX", style="Custom.TButton",command=self.aventura_chico)
        self.btn_chico.place(x= 460, y= 380)

        self.btn_chica = ttk.Button(self.a5, text="LAURA", style="Custom.TButton",command=self.aventura_chica)
        self.btn_chica.place(x= 1250, y= 380)

        

        ''' ----------------------- -------------------------TEXTO Y MENSAJES  ------------------------------------------------------------------'''

        self.mensajes = ["¡Hola! ¡Encantado de conocerte! \nSoy el capitán Anti-Bulling, líder de la organización SUPER-secreta conocida como los ANTIBULLINGERS.\nMis compañeros y yo nos dedicamos a  inspirar a los jovenes y a ayudarles a levantarse por si mismos,\nprotegemos a las víctimas del bullying y combatimos a los acosadores¡\n!Tenemos mucho trabajo¡",
                         "Como podrás imaginarte, no podemos hacerlo todo solos, necesitamos a chicos y chicas como tú¡\nVoy a contarte la historia de dos chicos que están teniendo problemas, con tu ayuda seguro que logramos solucionarlos!\n",
                         "¡Empezamos!"]
        
        self.mensajes2 = ["¡Bienvenido de nuevo!",
                         "Nuestra historia comienza en un camping muy cercano a un bonito pueblo de las montañas\nAhí hay un chico llamado Fran que está pasando las vacaciones con sus padres\n",
                         "El lugar era maravilloso, rodeado de un frondoso bosque y con un lago cercano donde bañarse.\nHabía caminos que recorrer y montañas que explorar\n"
                         "Sin embargo, a pesar de la belleza del lugar, Fran se sentía un poco triste porque no había hecho amigos aún y se sentía solo\n"]
        
        self.mensajes3 = ["Pero por suerte, un día vino una chica de su misma edad al campamento.\nAl principio le dió un poco de verguenza, pero le pudieron las ganas de tener compañía¡\nAdemás, la chica parecía muy simpática y alegre! ",
                         "La intuición de Alex no falló, y pronto se dió cuenta que era una chica muy agradable\nPoco a poco empezaron a conocerse, mientras jugaban por el campamento o ayudaban a sus padres a hacer las tareas.\nResultó que tenían muchas cosas en común!",
                         "A los dos les gustaba pasear y subirse a los árboles, además sentían una gran curiosidad por los animales\ne insectos del bosque, así como de sus árboles y sus flores, ¡Estaban en el lugar ideal!"]
        
        self.mensajes4 = ["Por desgracia, las vacaciones no duran para siempre y les quedaba poco tiempo para disfrutar la mutua compañía.\nSe fueron a dar una vuelta por el bosque para pasar una última tarde juntos en compañía.",
                         "Esa tarde, se sinceraron el uno con el otro, y empezaron a contarse los problemas y preocupaciones que tenáin en su día a día.\nResultó que ambos tenían problemas parecidos, Alex no veía bien el acoso tan normalizado al que tenía que enfrentarse\ncada vez que quería utilizar una red social o navegar por internet",
                         "Y Laura estaba harta de ver como cada día había compañeros en su colegio que eran\nacosados por otros compañeros, con burlas insultos incluso cosas peores.\nResueltos, ambos llegaron a una conclusión: Cada uno de ellos intentaría luchar contra el acoso y las injusticias que veían,\n",
                          "Alex se centraría en los abusos que veía por internet, y Laura en los acosos que veía en su colegio\n",
                          "Ambos quedaron en volver a encontrarse en el campamento al cabo de unas semanas,\ny se contarían los progresos y lo que cada uno había hecho para hacer un poco de justicia en el mundo!"]
        
        self.mensajes5 = ["Es hora de tomar una decisión!\nPuedes elegir a Alex, y aprender a hacer frente al ciberacoso.",
                                      "O puedes elegir a Laura, y hacer frente al bullying escolar!\n¡Tu eliges!"]

                
        self.indice_mensaje_actual = 0
        self.indice_mensaje_actual2 = 0
        self.indice_mensaje_actual3 = 0
        self.indice_mensaje_actual4 = 0
        self.indice_mensaje_actual5 = 0

        self.escribir_mensaje(0)
        self.escribir_mensaje2(0)
        self.escribir_mensaje3(0)
        self.escribir_mensaje4(0)
        self.escribir_mensaje5(0)

        ''' ----------------------- ------------------------FUNCIONES ESCRIBIR  ------------------------------------------------------------------'''

    def escribir_mensaje(self, i):
        if i <= len(self.mensajes[self.indice_mensaje_actual]):#iterador de letras de mensajes y su posicion en el array
            self.caja_dialogo.config(text=self.mensajes[self.indice_mensaje_actual][:i])#actualizador caja dialogo con i(las letras de los mensajes)
            self.after(2, lambda: self.escribir_mensaje(i+1))#añade la letra cada 2 mls
        else:
            # Terminó de escribir el mensaje
            self.btn_siguiente.config(state="normal")  # Habilitar el botón
            pass

    def escribir_mensaje2(self, i):
        if i <= len(self.mensajes2[self.indice_mensaje_actual2]):
            self.caja_dialogo2.config(text=self.mensajes2[self.indice_mensaje_actual2][:i])
            self.after(2, lambda: self.escribir_mensaje2(i+1))
        else:
            # Terminó de escribir el mensaje
            self.btn_siguiente2.config(state="normal")  # Habilitar el botón
            pass

    def escribir_mensaje3(self, i):
        if i <= len(self.mensajes3[self.indice_mensaje_actual3]):
            self.caja_dialogo3.config(text=self.mensajes3[self.indice_mensaje_actual3][:i])
            self.after(2, lambda: self.escribir_mensaje3(i+1))
        else:
            # Terminó de escribir el mensaje
            self.btn_siguiente3.config(state="normal")  # Habilitar el botón
            pass

    def escribir_mensaje4(self, i):
        if i <= len(self.mensajes4[self.indice_mensaje_actual4]):
            self.caja_dialogo4.config(text=self.mensajes4[self.indice_mensaje_actual4][:i])
            self.after(2, lambda: self.escribir_mensaje4(i+1))
        else:
            # Terminó de escribir el mensaje
            self.btn_siguiente4.config(state="normal")  # Habilitar el botón
            pass

    def escribir_mensaje5(self, i):
        if i <= len(self.mensajes5[self.indice_mensaje_actual5]):
            self.caja_dialogo5.config(text=self.mensajes5[self.indice_mensaje_actual5][:i])
            self.after(2, lambda: self.escribir_mensaje5(i+1))
        else:
            # Terminó de escribir el mensaje
            self.btn_siguiente5.config(state="normal")  # Habilitar el botón
            pass


    ''' ----------------------- ------------------------FUNCION SIGUIENTE MENSAJE------------------------------------------------------------------'''
    
    def siguiente_mensaje(self):
        self.indice_mensaje_actual += 1
        if self.indice_mensaje_actual < len(self.mensajes):
            self.btn_siguiente.config(state="disabled")  # Deshabilitar el botón
            self.caja_dialogo.config(text='')  # Limpiar la caja de diálogo
            self.escribir_mensaje(0)
        else:
            self.btn_siguiente.config(text="Continuar", command=self.ir_a_a2)  # Deshabilitar el botón
            self.caja_dialogo.config(text="Continua a la siguiente pantalla!")  # Mostrar mensaje de fin

    def siguiente_mensaje2(self):
        self.indice_mensaje_actual2 += 1
        if self.indice_mensaje_actual2 < len(self.mensajes2):
            self.btn_siguiente2.config(state="disabled")  # Deshabilitar el botón
            self.caja_dialogo2.config(text='')  # Limpiar la caja de diálogo
            self.escribir_mensaje2(0)
        else:
            self.btn_siguiente2.config(text="Continuar", command=self.ir_a_a3)  # Deshabilitar el botón
            self.caja_dialogo2.config(text="Continua a la siguiente pantalla!")  # Mostrar mensaje de fin

    def siguiente_mensaje3(self):
        self.indice_mensaje_actual3 += 1
        if self.indice_mensaje_actual3 < len(self.mensajes3):
            self.btn_siguiente3.config(state="disabled")  # Deshabilitar el botón
            self.caja_dialogo3.config(text='')  # Limpiar la caja de diálogo
            self.escribir_mensaje3(0)
        else:
            self.btn_siguiente3.config(text="Continuar", command=self.ir_a_a4)  # Deshabilitar el botón
            self.caja_dialogo3.config(text="Continua a la siguiente pantalla!")  # Mostrar mensaje de fin

    def siguiente_mensaje4(self):
        self.indice_mensaje_actual4 += 1
        if self.indice_mensaje_actual4 < len(self.mensajes4):
            self.btn_siguiente4.config(state="disabled")  # Deshabilitar el botón
            self.caja_dialogo4.config(text='')  # Limpiar la caja de diálogo
            self.escribir_mensaje4(0)
        else:
            self.btn_siguiente4.config(text="Continuar", command=self.ir_a_a5)  # Deshabilitar el botón
            self.caja_dialogo4.config(text="Continua a la siguiente pantalla!")  # Mostrar mensaje de fin

    def siguiente_mensaje5(self):
        self.indice_mensaje_actual5 += 1
        if self.indice_mensaje_actual5 < len(self.mensajes5):
            self.btn_siguiente5.config(state="disabled")  # Deshabilitar el botón
            self.btn_chico.config(state="disabled")
            self.btn_chica.config(state="disabled")
            self.caja_dialogo5.config(text='')  # Limpiar la caja de diálogo
            self.escribir_mensaje5(0)
        else:
            #self.btn_siguiente5.config(text="Continuar", command=self.ir_a_a1)  # Deshabilitar el botón
            self.caja_dialogo5.config(text="ELIJE TU AVENTURA")  # Mostrar mensaje de fin
            self.btn_chico.config(state="enabled",command=self.aventura_chico)
            self.btn_chica.config(state="enabled",command=self.aventura_chica)
            
    def ir_a_a2(self):
        self.a1.pack_forget()
        self.a2.pack(fill="both", expand=True)

    def ir_a_a3(self):
        self.a2.pack_forget()
        self.a3.pack(fill="both", expand=True)

    def ir_a_a4(self):
        self.a3.pack_forget()
        self.a4.pack(fill="both", expand=True)

    def ir_a_a5(self):
        self.a4.pack_forget()
        self.a5.pack(fill="both", expand=True)

    def ir_a_a1(self):
        self.a5.pack_forget()
        self.a1.pack(fill="both", expand=True)

    def aventura_chico(self):
        pygame.mixer.music.stop()
        self.destroy()
        #os.system('python Aventura1.py')
        subprocess.run(['python', 'AVENTURA_CHICO1.py'])

    def aventura_chica(self):
        pygame.mixer.music.stop()
        self.destroy()
        #os.system('python Aventura1.py')
        subprocess.run(['python', 'AVENTURA_CHICA.py'])



app = App()
app.mainloop()
