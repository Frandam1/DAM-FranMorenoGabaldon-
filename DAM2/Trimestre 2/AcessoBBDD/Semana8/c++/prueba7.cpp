#include <iostream>

using namespace std;

int main() {
    
    int numero;

    
    cout << "Ingrese un numero: ";
    cin >> numero;

    // Operadores if y if-else
    if (numero > 0) {
        cout << "El numero es positivo." << endl;
    } else if (numero < 0) {
        cout << "El numero es negativo." << endl;
    } else {
        cout << "Eso no es un  numerio" << endl;
    }

    return 0;
}
