#include <iostream>

using namespace std;

int main() {
    // Ejemplo de operadores lógicos sin bucles
    int edad;
    char genero;

    // Ingresar edad y género desde la entrada estándar
    cout << "Ingrese la edad: ";
    cin >> edad;

    cout << "Ingrese el género (M/F): ";
    cin >> genero;

    // Operadores lógicos: && (AND), || (OR), ! (NOT)
    bool esAdulto = edad >= 18;
    bool esMujer = genero == 'F';

    // AND (&&)
    cout << "Es adulto y mujer: " << (esAdulto && esMujer) << endl;

    // OR (||)
    cout << "Es adulto o mujer: " << (esAdulto || esMujer) << endl;

    // NOT (!)
    cout << "No es adulto: " << !esAdulto << endl;

    return 0;
}
