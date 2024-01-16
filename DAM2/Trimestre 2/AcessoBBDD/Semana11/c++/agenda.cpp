#include <iostream>
#include <fstream>

using namespace std;

int cursor = 0;
int longitud = 100;

struct registro
{
    string nombre;
    string telefono;
    string email;
};

registro agenda[100];
string opcion;

void menu()
{
    cout << "Programa agenda de Fran \n";
    cout << "Escoge una opción \n";
    cout << "1. Introduce un registro \n";
    cout << "2. Lista un registro \n";
    cout << "3. Salir del programa \n";
    cout << "4. Guardar la agenda \n";
    cin >> opcion;
    cout << "Has elegido la opción " << opcion << "\n";

    // Opciones
    if (opcion == "1")
    {
        cout << "Insertamos una opción \n";
        cout << "Introduce el nombre \n";
        string nombre;
        cin >> nombre;

        cout << "Introduce el telefono \n";
        string telefono;
        cin >> telefono;

        cout << "Introduce el email \n";
        string email;
        cin >> email;

        cout << "Voy a introducir: " << nombre << ", " << telefono << ", " << email << " y el email\n";
        agenda[cursor].nombre = nombre;
        agenda[cursor].telefono = telefono;
        agenda[cursor].email = email;
        cursor++;
        for (int i = 0; i < cursor; i++)
        {
            cout << agenda[i].nombre << ", " << agenda[i].telefono << ", " << agenda[i].email << "\n";
        }
        cout << "\n \n \n";
        
    }
    else if (opcion == "2")
    {
        cout << "Listo los elementos \n";
    }
    else if (opcion == "3")
    {
        cout << "Saliendo del programa. Adiós!\n";
        
        exit(0);  // Termina el programa
    }
    menu();
}

int main()
{
    system("cls");
    menu();

    return 0;
}
