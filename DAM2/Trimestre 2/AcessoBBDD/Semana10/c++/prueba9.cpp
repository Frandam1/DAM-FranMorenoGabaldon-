#include <iostream>

using namespace std;

int main() {
    // Ejemplo de bucle for
    for (int i = 1; i <= 5; ++i) {
        cout << "Iteración " << i << endl;
    }

    cout << "Buvle while : \n";

    int contador = 1;

    while (contador <= 33) {
        cout << "Iteración " << contador << endl;
        ++contador;
    }

    cout << "Bucle do while : \n";

    int contador2 = 11;

    do {
        cout << "Iteración " << contador2 << endl;
        ++contador2;
    } while (contador2 <= 77);

    return 0;
}
