string[] agenda = new string[10];

agenda[0] = "Juan";
agenda[1] = "Javier";

int longitud = agenda.Length;

Console.WriteLine("La longitud es : "+longitud);

foreach (string registro in agenda) {

    Console.WriteLine(registro);
}

