import re

print("Dime un numero")

numero = input()

regla = r'^([\s\d]+$)'

validacion = re.search(regla,numero)

if validacion:
    print("OK")
else:
    print("NO OK")
