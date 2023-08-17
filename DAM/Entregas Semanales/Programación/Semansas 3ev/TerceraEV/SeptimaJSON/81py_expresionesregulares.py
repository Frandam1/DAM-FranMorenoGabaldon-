import re

mitexto = "itiCrsitina"
busqueda = re.search("^iti",mitexto)
print(busqueda)
if busqueda:
    print("Tengo un resultado")
else:
    print("Intentalo otra vez")
