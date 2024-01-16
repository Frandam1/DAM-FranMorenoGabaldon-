#include <iostream>
#include <string>
using namespace std;

int main() {
   
   struct registro{
    string nombre;
    int telefono;
    string email;
   };

   registro agenda[20];
   agenda[0].nombre = "Fran";
   agenda[0].telefono = 452342342;
   agenda[0].email = "Fran@correo.com";

    cout << agenda[0].nombre << "\n";
    return 0;
}
