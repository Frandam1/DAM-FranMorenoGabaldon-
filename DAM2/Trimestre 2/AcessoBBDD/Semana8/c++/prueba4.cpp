#include <iostream>
using namespace std;

int main()
{

    int op1;

    cout << "Dime un numero: \n";

    cin >> op1;

    int op2;

    cout << "Dime otro numero: \n";

    cin >> op2;

    int sum = op1 + op2;

    cout << "La suma de ambos numeros es " << sum << "\n";

    int res = op1 - op2;

    cout << "La resta de ambos numeros es \n" << res << "\n";

    double div = op1 / op2;

    cout << "La division de ambos numeros es \n" << div << "\n";

    int mul = op1 * op2;

    cout << "La mukltiplicacion de ambos numeros es \n" << mul << "\n";

    int resto = op1 % op2;

    cout << "La resto de ambos numeros es \n" << resto << "\n";

    float op = 1;

    cout << "op vale  \n" << op << "\n";

    op++;

    cout << "Ahora vale  \n" << op << "\n";

    op--;

    cout << "Ahora vale  \n" << op << "\n";

    op += 10;

    cout << "Ahora vale  \n" << op << "\n";

    op -= 10;
    cout << "Ahora vale  \n" << op << "\n";
    op *= 3;
    cout << "Ahora vale  \n" << op << "\n";
    op /= 2;
    cout << "Ahora vale  \n" << op << "\n";





    return 0;
}
