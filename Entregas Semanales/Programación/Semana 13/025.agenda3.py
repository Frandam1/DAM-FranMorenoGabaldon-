agenda = [["nombre","telefono","email"]]

## Vamos a cargar los registros que ya teniamos

archivo = open("agenda.txt",'r')
for i in range(1,10):
    nuevalinea = archivo.readline().split(",")
    agenda.append(nuevalinea)
'''
Este código abre un archivo llamado "agenda.txt" en modo de lectura.
Luego, utiliza un ciclo "for" para iterar desde 1 hasta 10.
En cada iteración, se lee una línea del archivo y se utiliza el método
"split" para dividirla en una lista de elementos separados por comas.
Finalmente, se agrega esta lista (que representa una línea del archivo)
a una lista llamada "agenda". En resumen, este código esta leyendo
un archivo de texto con nombre agenda.txt, donde cada linea es una
entrada separada por comas,
y esta almacenando cada linea en una lista llamada agenda.


'''
    
## Dime como esta la agenda

print(agenda)

def miAgenda():
    #Menu inicial
    
    print("Escoje una")
    print("1.-Nuevo registro")
    print("2.-Listar registros")
    print("3.-Buscar")
    opcion = input()
    if opcion == "1":
        print("Inserta nombre")
        nombre = input()
        print("Inserta telefono")
        telefono = input()
        print("Inserta email")
        email = input()


        ## Metemos todo en la losta y la sacamos para comprobar
        agenda.append([nombre,telefono,email])
        ##print(agenda)

        #Gaurdamos el archivo, sino al cerrar el programa se pierden los datos
        archivo = open("agenda.txt",'a')
        longaniza = nombre+","+telefono+","+email+"\n"
        archivo.write(str(longaniza))
        archivo.close()
    if opcion == "2":
        for i in range(1,len(agenda)):
            print(agenda[i])
## Probandoa  ahcer el ejercicio
    if opcion == "3":
        print("Inserta el nombre a buscar")
        nombre_buscar = input()
        for i in range(1,len(agenda)):
            if agenda[i][0] == nombre_buscar:
                print("Nombre:",agenda[i][0])
                print("Telefono:",agenda[i][1])
                print("Email:",agenda[i][2])
                break
        else:
            print("No se ha encontrado el nombre en la agenda")
    miAgenda()

## Ejecucion recursiva
    miAgenda()

miAgenda()
