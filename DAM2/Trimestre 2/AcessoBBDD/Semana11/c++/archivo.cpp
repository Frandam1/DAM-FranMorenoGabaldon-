#include <iostream>
#include <fstream>

using namespace std;

int main() {
   
   ofstream archivo;
   archivo.open("archivo2.txt");
   archivo << "HOLAAA";
   archivo.close();

    return 0;
}
