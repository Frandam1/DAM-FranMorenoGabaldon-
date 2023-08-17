string[] ciudades = new string[10];
ciudades[0] = "Jijon";
ciudades[1] = "Cuenca";
ciudades[2] = "Caceres";
ciudades[3] = "Segovia";
ciudades[4] = "Valencia";
ciudades[5] = "madrid";
ciudades[6] = "Alicante";
ciudades[7] = "Castellon";

foreach (string ciudad in ciudades) {
    Console.WriteLine(ciudad);

}
Array.Sort(ciudades);
Console.WriteLine("-----------------");
foreach (string ciudad in ciudades)
{
    Console.WriteLine(ciudad);
}


