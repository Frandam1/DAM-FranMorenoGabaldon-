#include <iostream>
#include <string>
using namespace std;

int main() {
    const int filas = 20;
    const int columnas = 3;
    
    string agenda[filas][columnas];

    // Ingresar información en la matriz
    agenda[0][0] = "Fran";
    agenda[0][1] = "123-456-789";
    agenda[0][2] = "fran@example.com";

    agenda[1][0] = "Ana";
    agenda[1][1] = "987-654-321";
    agenda[1][2] = "ana@example.com";

    // Mostrar información por consola
    for (int i = 0; i < filas; ++i) {
        for (int j = 0; j < columnas; ++j) {
            cout << agenda[i][j] << "\t";
        }
        cout << endl;
    }

    return 0;
}
