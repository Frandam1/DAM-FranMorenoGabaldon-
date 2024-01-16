#include <iostream>
#include <fstream>

using namespace std;

int main() {
   string linea;
   ifstream archivo;
   archivo.open("archivo2.txt");
   while(getline(archivo,linea)){
    cout << linea << "\n";
   }
   archivo.close();

    return 0;
}
