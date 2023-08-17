namespace Pruebaexamen3
{
    internal class Program
    {
        static void Main(string[] args)
        {
            // Titulo del programa
            Console.WriteLine("Calculo KM afinado");

            // Le pedimos al usuario algo mediante consola

            Console.WriteLine("Dime a que velocidad vas");

            // Creamos una variable tipo float, la funcion parse con el argumento readline 
            // guardara la info en la variable
            float velocidad = float.Parse(Console.ReadLine());

            // Ahora le pedimos la distancia

            Console.WriteLine("Dime la distancia a la que vas");

            // Y repetimos para almacenarla en otra variable
            float distancia = float.Parse(Console.ReadLine());

            // Hacemos la operacion guardandola en una nueva variable

            float resultado = distancia / velocidad;

            // Sacamos por consola la informacion 

            Console.WriteLine("Vas a tardar " + resultado + " horas en llegar");
        }
    }
}