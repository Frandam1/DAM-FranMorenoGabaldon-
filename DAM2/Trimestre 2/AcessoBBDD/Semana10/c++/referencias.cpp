#include <iostream>
#include <string>

using namespace std;

int main() {
    
    string nombre = "Fran";

    string &referencia = nombre;
    string* puntero = &nombre;

    cout << *puntero << "\n";

    return 0;
}
