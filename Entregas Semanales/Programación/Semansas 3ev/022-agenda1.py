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
## Ejecucion recursiva
    miAgenda()

miAgenda()
