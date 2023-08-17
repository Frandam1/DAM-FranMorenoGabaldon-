import json

archivo = open("tabla-6566.json",'r')
micadena = archivo.read().replace('\n','')

carga = json.loads(micadena)

print(type(micadena))
print(type(carga))

print(carga['glossary']['GlossDiv']['title'])
