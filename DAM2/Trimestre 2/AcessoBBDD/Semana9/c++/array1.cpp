#include <iostream>
#include <string>

int main() {
    const int longitud = 20;
    std::string agenda[longitud];

    // Inicializar algunos elementos
    agenda[0] = "Fran";
    agenda[1] = "Ana";
    agenda[2] = "Cris";
    agenda[3] = "Carlos";

    // Bucle for para iterar sobre el array e imprimir los elementos
    for (int i = 0; i < longitud; ++i) {
        if (!agenda[i].empty()) {
            std::cout << "Elemento " << i << ": " << agenda[i] << std::endl;
        }
    }

    return 0;
}
