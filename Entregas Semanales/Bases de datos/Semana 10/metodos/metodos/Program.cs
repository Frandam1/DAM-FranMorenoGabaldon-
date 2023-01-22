saluda("luis");
saluda("pedro");
saluda("juan");


//Parametros dentgro de metodos, una sola funcion sirve para varias 
static void saluda(string nombre)
{
    Console.WriteLine("Hola "+nombre+" soy un metodo");
}