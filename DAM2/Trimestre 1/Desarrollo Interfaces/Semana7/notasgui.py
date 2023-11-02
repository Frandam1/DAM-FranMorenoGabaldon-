import tkinter as tk
from tkinter import ttk
import sqlite3 as bd
from tkinter.colorchooser import askcolor

#Conexion BBDD

conexion = bd.connect("notas.sqlite")
cursor = conexion.cursor()
cursor.execute("""
    CREATE TABLE IF NOT EXISTS 'notas' (
        'id' INTEGER,
        'texto' TEXT,
        'color' TEXT,
        'fecha' TEXT,
        PRIMARY KEY ('id' AUTOINCREMENT)
    );    
""")
cursor.execute("""
    CREATE TABLE IF NOT EXISTS 'usuarios' (
        'id' INTEGER,
        'usuario' TEXT,
        'contrasena' TEXT,
        'email' TEXT,
        PRIMARY KEY ('id' AUTOINCREMENT)
    );    
""")

def iniciaSesion():
    print("Vamos a iniciar sesion")
    print("El nombre de usuario es :"+varusuario.get())
    print("La constraseña es: "+varcontrasena.get())
    print("El email del usuario es :"+varemail.get())
    #Comprobamos si existe usuario
    cursor = conexion.cursor()
    cursor.execute('SELECT * FROM usuarios')
    datos = cursor.fetchall()
    numerousuarios = 0
    for i in datos:
        numerousuarios = numerousuarios + 1
    if(numerousuarios == 0):
        print("No hay ningun usuairo")
        cursor.execute("INSERT INTO usuarios VALUES (NULL,'"+varusuario.get()+"','"+varcontrasena.get()+"','"+varemail.get()+"');")
        conexion.commit()
    else:
        print("Si que hay suusairos")
        cursor.execute('''
            SELECT *
            FROM usuarios
            WHERE usuario = "'''+varusuario.get()+'''"
            AND contrasena = "'''+varcontrasena.get()+'''"
            AND email = "'''+varemail.get()+'''"
            ''')
        existe = False
        existe = True #Forzamos una vez comprobamos que funciona
        datos=cursor.fetchall()
        for i in datos:
            existe = True
        if existe == True:
            print("El susuario es correcto")
            marco.destroy()
            marco2= ttk.Frame(raiz)
            marco2.pack()
            
            
            iconoaplicacion = tk.PhotoImage(file="img/icono.png")
            etiquetaicono = ttk.Label(
                marco2,
                text="Notas v0.01",
                image = iconoaplicacion,
                compound=tk.TOP,
                font=("Arial",14)
            )
            etiquetaicono.image = iconoaplicacion
            etiquetaicono.pack()
            botonnuevanota = ttk.Button(marco2,text="Nuev anota",command=creaNota)
            botonnuevanota.pack(pady=10,expand=True) 
        else:
            print("No es correcto")
            raiz.after(3000,lambda:raiz.destroy())#Cerrar la ventana
            
def creaNota():
    ventananuevanota = tk.Toplevel()
    anchura = 500
    altura = 550
    ventananuevanota.geometry(str(anchura)+'x'+str(altura)+'+100+100')
    texto = tk.Text(ventananuevanota,bg="white")
    texto.pack()
    selectorcolor = ttk.Button(ventananuevanota, text="Cambiar color",command=lambda:cambiaColor(ventananuevanota))
    selectorcolor.pack()
    
def cambiaColor(ventana):
    nuevocolor = askcolor(title="Selecciona un color")
    ventana.configure(bg = nuevocolor[1])
    
    
    
#Creamos la ventana principal  
    
raiz = tk.Tk()
raiz.title("Notas v0.01")

raiz.geometry('300x300+20+20')
raiz.attributes("-topmost",True)
raiz.attributes("-alpha",0.9)
raiz.resizable(0,0)

estilo = ttk.Style()
estilo.theme_use('clam')


estilo.configure("TLabel", background="lightblue", font=("Verdana", 16))
estilo.configure("TEntry", padding=(10, 10, 10, 10), font=("Verdana", 16))
estilo.configure("TButton", padding=(10, 10, 10, 10), font=("Verdana", 12), background="lightgreen")

#Variables globales

varusuario= tk.StringVar()
varcontrasena= tk.StringVar()
varemail = tk.StringVar()

#Añadimos Widgets

marco = ttk.Frame(raiz)
marco.pack()

version = tk.Label(marco, text="Notas v0.01")
version.pack()

inputusuario = ttk.Entry(marco,textvariable= varusuario)
inputusuario.insert(0,'Introduce tu usuario')
inputusuario.pack(pady=10)

inputcontrasena = ttk.Entry(marco,textvariable=varcontrasena)
inputcontrasena.insert(0,'Introduce tu contraseña')
inputcontrasena.pack(pady=10)

inputemail = ttk.Entry(marco,textvariable=varemail)
inputemail.insert(0,'Introduce tu email')
inputemail.pack(pady=10)

botonlogin = ttk.Button(marco,text="Enviar",command=iniciaSesion)
botonlogin.pack(pady=10)



#Antialias en windows

try:
    from ctypes import windll
    windll.shcore.SetProcessDpiAwareness(1)
except Exception as e:
    print(e)
finally:    
    raiz.mainloop()
