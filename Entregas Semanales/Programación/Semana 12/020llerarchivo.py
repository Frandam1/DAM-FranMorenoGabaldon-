archivo = open("miarchivo.txt",'r')

print(archivo.readline())
print(archivo.readline())

print(archivo.read())

for i in range(0,10):
    print(archivo.readline())
    if
'''

Este código abre un archivo llamado "miarchivo.txt" en modo "lectura",
lo que significa que el archivo será leído y no se podrán realizar
modificaciones en él.
Luego, utiliza el método readline()
para leer la primera línea del archivo y la
imprime en la pantalla. Luego lee y imprime la segunda línea.
Luego, utiliza el método read() para leer todo el archivo y lo
imprime en la pantalla. Finalmente, utiliza un bucle for para leer y
imprimir las siguientes 10 líneas del archivo utilizando el método readline().
Si hay menos de 10 líneas en el archivo, imprimirá líneas vacías.
Después de todo este proceso, el archivo se cierra.


''''
