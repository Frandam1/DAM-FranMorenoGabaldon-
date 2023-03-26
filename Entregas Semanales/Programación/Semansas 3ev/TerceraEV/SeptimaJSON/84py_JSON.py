import json

micadena = '{"Fran":"fran@correo.com","ana":"ana@correo.com","luis":"luis@correo.com"}'

carga = json.loads(micadena)

print(type(micadena))
print(type(carga))

print(carga["Fran"])
