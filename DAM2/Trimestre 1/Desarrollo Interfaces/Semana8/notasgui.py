import tkinter as tk
from tkinter import ttk
import sqlite3 as bd
from tkinter.colorchooser import askcolor
import time

class Nota:
    def __init__(self,identificador,texto,color,fecha):
        self.identificador = identificador
        self.texto = texto
        self.color = color
        self.fecha = fecha

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
            botonguardarnotas = ttk.Button(marco2,text="Guardar Notas",command=guardaNotas)
            botonguardarnotas.pack(pady=10,expand=True)  
            
            #Cargo las notas desde la BBDD

            cursor.execute('SELECT * FROM NOTAS')
            datos = cursor.fetchall()
            for i in datos:
                print("Hay notas en la BBDD")
                cargaNota(i[0],i[1],i[2],i[3])
                notas.append(Nota(i[0],i[1],i[2],i[3]))
                #identificador = identificador +1
            for i in notas:
                print(i.identificador)
                print(i.texto)
                print(i.color)
                print(i.fecha)
            
        else:
            print("No es correcto")
            raiz.after(3000,lambda:raiz.destroy())#Cerrar la ventana
            
def guardaNotas():
    for i in notas:
        print(i.texto)
        print(i.color)
        print(i.fecha)
        existe = False
        cursor.execute('SELECT * FROM NOTAS WHERE fecha = "'+i.fecha+'"')
        datos = cursor.fetchall()
        for i in datos:
            existe = True
        if existe == False:
            cursor.execute("INSERT INTO notas VALUES (NULL,'"+i.texto+"','"+i.color+"','"+i.fecha+"');")
        conexion.commit() 
            
def creaNota():
    global notas
    global identificador
    fecha = str(int(time.time()))
    
    notas.append(Nota(identificador,'','',fecha))
    
    for i in notas:
        print(i.identificador)
        print(i.texto)
        print(i.color)
        print(i.fecha)

    ventananuevanota = tk.Toplevel()
    anchura = 500
    altura = 550
    ventananuevanota.geometry(str(anchura)+'x'+str(altura)+'+100+100')
    texto = tk.Text(ventananuevanota,bg="white")
    texto.pack()
    identificadorpropio = identificador
    selectorcolor = ttk.Button(ventananuevanota, text="Cambiar color",command=lambda:cambiaColor(ventananuevanota,texto,identificadorpropio))
    selectorcolor.pack()
    identificador = identificador + 1
    
def cargaNota(id,mitexto,color,fecha):
    global notas
    global identificador
    fecha = str(int(time.time()))
    
    notas.append(Nota(identificador,'','',fecha))
    
    for i in notas:
        print(i.identificador)
        print(i.texto)
        print(i.color)
        print(i.fecha)

    ventananuevanota = tk.Toplevel()
    anchura = 500
    altura = 550
    ventananuevanota.geometry(str(anchura)+'x'+str(altura)+'+100+100')
    texto = tk.Text(ventananuevanota,bg="white")
    texto.insert("1.0",mitexto)
    ventananuevanota.configure(bg = color)
    try:     
        texto.configure(bg = color)
    except Exception as e:
        print(e) 
    texto.pack()
    identificadorpropio = identificador
    selectorcolor = ttk.Button(ventananuevanota, text="Cambiar color",command=lambda:cambiaColor(ventananuevanota,texto,identificadorpropio))
    selectorcolor.pack()
    identificador = identificador + 1
    
def cambiaColor(ventana,texto,identificador):
    nuevocolor = askcolor(title="Selecciona un color")
    ventana.configure(bg = nuevocolor[1])
    texto.configure(bg = nuevocolor[1])
    notas[identificador].color = nuevocolor[1]
    notas[identificador].texto = texto.get("1.0",tk.END)
    print("El id es : "+str(identificador))

    for i in notas:
        print(i.identificador)
        print(i.texto)
        print(i.color)
        print(i.fecha)
    
    
    
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
notas = []
identificador = 0

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
