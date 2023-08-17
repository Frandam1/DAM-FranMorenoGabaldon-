agenda = []

agenda.append(["Jose", "42342","+++++"])
agenda.append(["Luis", "56456","%%%%%%%%"])
agenda.append(["Pedro", "42312312342","********"])

print(agenda[1][0])

'''

agenda = [100]

agenda[0] = ["Jose", "42342","+++++"]
agenda[1] = ["Luis", "56456","%%%%%%%%"]
agenda[2] = ["Pedro", "42312312342","********"]

print(agenda[1][0])

El error es que se está intentando asignar valores a índices que no existen en la lista "agenda".
La lista "agenda" solo tiene un elemento en el índice 0.
Si se desea agregar más elementos a la lista, se puede utilizar el método "append()"
en lugar de intentar asignar a un índice específico.





'''
