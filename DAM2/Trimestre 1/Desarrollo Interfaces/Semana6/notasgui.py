import tkinter as tk
from tkinter import ttk

raiz = tk.Tk()
raiz.title("Notas v0.01")

raiz.geometry('300x300+20+20')
raiz.attributes("-topmost",True)
raiz.attributes("-alpha",0.9)
raiz.resizable(0,0)

estilo = ttk.Style()
estilo.theme_use('clam')

#Añadimos Widgets

version = tk.Label(raiz, text="Notas v0.01")
version.pack()

estilo.configure("TLabel", background="lightblue", font=("Verdana", 16))
estilo.configure("TEntry", padding=(10, 10, 10, 10), font=("Verdana", 16))
estilo.configure("TButton", padding=(10, 10, 10, 10), font=("Verdana", 12), background="lightgreen")

inputusuario = ttk.Entry(raiz)
inputusuario.insert(0,'Introduce tu usuario')
inputusuario.pack(pady=10)

inputcontrasena = ttk.Entry(raiz)
inputcontrasena.insert(0,'Introduce tu contraseña')
inputcontrasena.pack(pady=10)

inputemail = ttk.Entry(raiz)
inputemail.insert(0,'Introduce tu email')
inputemail.pack(pady=10)

botonlogin = ttk.Button(raiz,text="Enviar")
botonlogin.pack(pady=10)



#Antialias en windows

try:
    from ctypes import windll
    windll.shcore.SetProcessDpiAwareness(1)
except Exception as e:
    print(e)
finally:    
    raiz.mainloop()
