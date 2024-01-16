#include <iostream>

using namespace std;

int main() {
    
    int a, b;

    // Ingresar dos números desde la entrada estándar
    cout << "Ingrese el primer numero: ";
    cin >> a;

    cout << "Ingrese el segundo numero: ";
    cin >> b;

    // Igualdad (==)
    cout << "a es igual a b: " << (a == b) << endl;

    // Desigualdad (!=)
    cout << "a no es igual a b: " << (a != b) << endl;

    // Mayor que (>)
    cout << "a es mayor que b: " << (a > b) << endl;

    // Menor que (<)
    cout << "a es menor que b: " << (a < b) << endl;

    // Mayor o igual que (>=)
    cout << "a es mayor o igual que b: " << (a >= b) << endl;

    // Menor o igual que (<=)
    cout << "a es menor o igual que b: " << (a <= b) << endl;

    return 0;
}
