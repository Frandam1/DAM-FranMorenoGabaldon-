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

void listarRegistros()
{
    cout << "Listado de registros:\n";
    for (int i = 0; i < cursor; i++)
    {
        cout << i + 1 << ". Nombre: " << agenda[i].nombre << ", Teléfono: " << agenda[i].telefono << ", Email: " << agenda[i].email << "\n";
    }
}

void guardarEnArchivo()
{
    ofstream archivo("test.txt");

    if (archivo.is_open())
    {
        archivo << "Agenda:\n";
        for (int i = 0; i < cursor; i++)
        {
            archivo << "Nombre: " << agenda[i].nombre << ", Teléfono: " << agenda[i].telefono << ", Email: " << agenda[i].email << "\n";
        }

        cout << "Agenda guardada en el archivo 'test.txt'\n";
        archivo.close();
    }
    else
    {
        cout << "No se pudo abrir el archivo para escribir.\n";
    }
}

void menu()
{
    cout << "Programa agenda de Fran \n";
    cout << "Escoge una opción \n";
    cout << "1. Introduce un registro \n";
    cout << "2. Lista los registros \n";
    cout << "3. Salir del programa \n";
    cout << "4. Guardar la agenda \n";
    cin >> opcion;
    cout << "Has elegido la opción " << opcion << "\n";

    // Opciones
    if (opcion == "1")
    {
        cout << "Insertamos un registro \n";
        cout << "Introduce el nombre \n";
        string nombre;
        cin >> nombre;

        cout << "Introduce el teléfono \n";
        string telefono;
        cin >> telefono;

        cout << "Introduce el email \n";
        string email;
        cin >> email;

        cout << "Voy a introducir: " << nombre << ", " << telefono << ", " << email << "\n";
        agenda[cursor].nombre = nombre;
        agenda[cursor].telefono = telefono;
        agenda[cursor].email = email;
        cursor++;

        cout << "Registro añadido correctamente.\n";
    }
    else if (opcion == "2")
    {
        listarRegistros();
    }
    else if (opcion == "3")
    {
        cout << "Saliendo del programa. ¡Adiós!\n";
        exit(0); // Termina el programa
    }
    else if (opcion == "4")
    {
        guardarEnArchivo();
    }
    else
    {
        cout << "Opción no válida. Por favor, elige una opción válida.\n";
    }

    menu();
}

int main()
{
    menu();

    return 0;
}
