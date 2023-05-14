import os
from tkinter import *
import pygame

root = Tk()

# Inicializa Pygame mixer
pygame.mixer.init()

# Establece la geometría de la ventana para que ocupe toda la pantalla
root.state('zoomed')

#Escribimos mensaje multilinea de presentación

mensaje = '''Según el informe Anual del Observatorio de la Infancia en España,durante el curso 21/22 se recibieron
1369 denuncias de ciberacoso en España, lo que supone un aumento del 34% respecto al año anterior.

La fundación ANAR informa que el acoso escolar sigue siendo un problema grave en España,
y a antendido mas de 945 casos de acoso escolar el último año.

Las consecuencias del ciberacoso y el acoso escolar pueden ser devastadoras para las víctimas,
incluyendo ansiedad, depresión, aislamiento social, bajo
rendimiento académico y problemas de salud mental a largo plazo.

En casos extremos, el acoso puede conducir a las vícimas a cometer suicidio...'''

# Creamos el canvas y sus atributos heredados de root(como la pantalla completa), y establecemos el color del fondo a negro.

canvas = Canvas(root, width=root.winfo_screenwidth(), height=root.winfo_screenheight(), bg="black")
texto = canvas.create_text(root.winfo_screenwidth() // 2, root.winfo_screenheight() // 2, text=mensaje, justify= "center", fill="black", font=("Hey Comic", 28))
canvas.pack(fill=BOTH, expand=YES)

# Carga la música

pygame.mixer.music.load("./music/Intro.wav")

# Reproduce la música
pygame.mixer.music.play()

##Primera transición: de negro a blanco. esta función crea una animación
##que cambia gradualmente el color de fondo de un canvas de negro (#000000) a blanco (#FFFFFF),
##utilizando una técnica conocida como "fading" (desvanecimiento) que ajusta los valores de los canales de color
##(rojo, verde y azul) de manera gradual en cada iteración del bucle.

for i in range(256):
    color = f"#{i:02x}{i:02x}{i:02x}"
    canvas.config(bg=color)
    canvas.update()
    root.after(10)

##Esta línea hace que el programa espere 10 milisegundos
##antes de continuar a la siguiente iteración del bucle,
##creando así una animación del cambio gradual de color.

root.after(11000)

# Segunda transición: de blanco a negro
for i in range(255, -1, -1):
    color = f"#{i:02x}{i:02x}{i:02x}"
    canvas.config(bg=color)
    canvas.update()
    root.after(10)

# Detiene la música
pygame.mixer.music.stop()

#El módulo os de Python proporciona una manera de interactuar con el sistema operativo en el que se está ejecutando el programa.
#En este caso, usamos system para abrir un nuevo proceso del intérprete de Python para ejecutar el archivo.

os.system("MENU_PRINCIPAL.py")

#Cerramos la ventana de introducción.

root.destroy()
