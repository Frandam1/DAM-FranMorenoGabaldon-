string diadelasemana = "viernes";

switch(diadelasemana)
{
    case "lunes":
        Console.WriteLine("Es el peor dia de la semana");
        break;
    case "martes":
        Console.WriteLine("Es el segundo peor dia de la semana");
        break;
    case "miercoles":
        Console.WriteLine("Es el tercer peor dia de la semana");
        break;
    case "jueves":
        Console.WriteLine("Es el cuarto peor dia de la semana");
        break;
    case "viernes":
        Console.WriteLine("Es el mejor dia de la semana");
        break;
    case "sabado":
        Console.WriteLine("Es un gran dia");
        break;
    case "domingo":
        Console.WriteLine("descansar");
        break;
    default: 
        Console.WriteLine("Eso no es un dia");
        break;
}
