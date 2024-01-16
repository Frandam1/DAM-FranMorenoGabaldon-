#include <iostream>
#include <fstream>

using namespace std;

string saluda(string nombre, int edad){
    string cadena = "Saludo a " +  nombre + "y se que tienes " + to_string(edad) +" años \n";
    return cadena;
}
string saluda(string nombre){
    string cadena = "Saludo a " +  nombre + " adecuadamente \n";
    return cadena;
}


string saluda(){
    string cadena = "Saludo adecuadamente \n";
    return cadena;
}

int main() {
    cout << saluda("Fran");
    cout << saluda("Cris");
    cout << saluda("Asir");
    cout << saluda();
    cout << saluda("Ana", 26);

    return 0;
}
