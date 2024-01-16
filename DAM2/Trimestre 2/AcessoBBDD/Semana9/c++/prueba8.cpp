#include <iostream>

using namespace std;

int main() {
    // Ejemplo de switch para el día de la semana
    int numeroDia;

    // Ingresar un número del 1 al 7 que representa un día de la semana
    cout << "Ingrese un número del 1 al 7: ";
    cin >> numeroDia;

    // Utilizar switch para determinar el día de la semana
    switch (numeroDia) {
        case 1:
            cout << "Lunes" << endl;
            break;
        case 2:
            cout << "Martes" << endl;
            break;
        case 3:
            cout << "Miércoles" << endl;
            break;
        case 4:
            cout << "Jueves" << endl;
            break;
        case 5:
            cout << "Viernes" << endl;
            break;
        case 6:
            cout << "Sábado" << endl;
            break;
        case 7:
            cout << "Domingo" << endl;
            break;
        default:
            cout << "Número inválido. Ingrese un número del 1 al 7." << endl;
            break;
    }

    return 0;
}
