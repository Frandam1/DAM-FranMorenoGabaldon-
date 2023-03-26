'''
Calculadora
Ejemplo nde comentario
de varias lineas

'''
##Bienvenida
print("Bienvenido a la calculadora")
print("Dime tu nombre")
nombre = input()
print("Hola, ",nombre," bienvenido a la calculadora")
def calculadora():
    ##Indica la operacion
    print("Que es lo que quieres hacer"+
          "\n1.-Suma"+
          "\n2.-Resta"+
          "\n3.-Multi"+
          "\n4.-Divi"+
          "")
    operacion = int(input())
    print("Has elegido ",operacion)
    ##Elige los datos
    print("Ahora un numeri")
    numero1 = int(input())

    print("Ahora otro")
    numero2 = int(input())
    ##Hace la operacion
    if operacion == 1:
        print("El resultado es ",(numero1+numero2))
    if operacion == 2:
        print("El resultado es ",(numero1-numero2))
    if operacion == 3:
        print("El resultado es ",(numero1*numero2))
    if operacion == 4:
        print("El resultado es ",(numero1/numero2))

    calculadora()

calculadora()
