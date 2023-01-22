'''
En resumen, el código abre un archivo llamado "miarchivo.txt" en modo de "anexo" y escribe la cadena "Este es un texto" en el archivo.
Luego cierra el archivo.
El modo de "anexo" significa que si el archivo ya existe, el nuevo contenido se agrega al final del archivo existente en lugar de reemplazarlo.


'''


archivo = open("miarchivo.txt",'a')

archivo.write("Este es un texto")
archivo.close()
