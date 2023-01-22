## Programa agenda

agenda = [["nombre","telefono","email"]]

def miAgenda():
    print("Inserta nombre")
    nombre = input()
    print("Inserta telefono")
    telefono = input()
    print("Inserta email")
    email = input()

## Metemos todo en la losta y la sacamos para comprobar
    agenda.append([nombre,telefono,email])
    print(agenda)

#Gaurdamos el archivo, sino al cerrar el programa se pierden los datos
    archivo = open("agenda.txt",'a')
    longaniza = nombre+","+telefono+","+email+"\n"
    archivo.write(str(longaniza))
    archivo.close()
## Ejecucion recursiva
    miAgenda()

miAgenda()

'''

Este código es un programa en Python que crea una agenda sencilla.
La agenda es una lista de listas, donde cada sublista contiene un nombre,
un teléfono y un correo electrónico. La función "miAgenda()" es llamada
de forma recursiva y cada vez que se ejecuta, pide al usuario que ingrese
un nombre, un teléfono y un correo electrónico, los cuales son agregados a
la lista "agenda" y luego se imprime la lista completa. También se escribe
los datos
en un archivo de texto llamado "agenda.txt" para guardar los datos ingresados.




'''
