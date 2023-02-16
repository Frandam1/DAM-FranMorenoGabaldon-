namespace Calcukadora_velocidad_sonido_examen
{
    internal class Program
    {
        static void Main(string[] args)
        {
           

            // Titulo del programa
            Console.WriteLine("Calculo velocidad sonido");

            // Le pedimos al usuario algo mediante consola

            Console.WriteLine("Cuanto tiempo a pasado desde que has oido el trueno, en segundos?");

            // Creamos una variable tipo float, la funcion parse con el argumento readline 
            // guardara la info en la variable
            float tiempo = float.Parse(Console.ReadLine());

            // Creamos una variable que corresponde a la velocidad del trueno

            int velocidad = 343;

            // Hacemos la operacion guardandola en una nueva variable

            float resultado = velocidad / tiempo;

            // Sacamos por consola la informacion 

            Console.WriteLine("El trueno va a tardar " + resultado + " segundos en llegar");
        }
    }
}