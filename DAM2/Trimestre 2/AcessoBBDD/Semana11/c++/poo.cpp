#include <iostream>
using namespace std;

class Deidad{
    public:
        string humanos(){
            return "Soy un humano";
        }
};

class Animal{
    public:
        string seMueve(){
            return "el animal se muieve";
        }
        string maulla(){
            return "La deidad maulla";
        }
};

class Mamifero: public Animal, public Deidad{
    public:
    string juega(){
        return "El animal juega de pequeo";
    }
};

class Gato: public Mamifero{
    public:
        string nombre;
        int edad;
        string maulla(){
            return "el gato maulla \n";
        }

};


int main(){

    Gato gato1;
    cout << gato1.maulla();
  
    return 0;
}