#include <stdio.h>
#include <string.h>
#include <sys/stat.h>
#include <sys/types.h>


int main(int argc, char *argv[])
{

    FILE *archivo;

    char *operacion = argv[1];
    char *basededatos = argv[2];
    char *coleccion = argv[3];
    char *documento = argv[4];

    char ruta[100];

    strcpy(ruta, basededatos);
    strcat(ruta, "/");
    strcat(ruta, coleccion);
    strcat(ruta, "/");
    strcat(ruta, documento);
    strcat(ruta, ".json");

    printf("La ruta es: %s\n", ruta);

    if (strcmp(operacion, "select") == 0)
    {
        archivo = fopen(ruta, "r");
        if (archivo != NULL)
        {
            printf("Te doy datos:\n");
            char linea[1024];
            while (fgets(linea, sizeof(linea), archivo) != NULL)
            {
                printf("Linea: %s", linea);
            }
            fclose(archivo);
        }
        else
        {
            printf("Error al abrir el archivo %s para lectura.\n", ruta);
        }
    }
    else if (strcmp(operacion, "insert") == 0)
    {
        archivo = fopen(ruta, "w");
        if (archivo != NULL)
        {
            char *texto = argv[5];
            fputs(texto, archivo);
            fputs("\n", archivo);
            fclose(archivo);
        }
        else
        {
            printf("Error al abrir el archivo %s para escritura.\n", ruta);
        }
    }
    else if (strcmp(operacion, "create_collection") == 0)
    {
        char directorio_coleccion[100];
        strcpy(directorio_coleccion, basededatos);
        strcat(directorio_coleccion, "/");
        strcat(directorio_coleccion, coleccion);

        if (mkdir(directorio_coleccion) == 0)
        {
            printf("Se creó la colección '%s' en la base de datos '%s'.\n", coleccion, basededatos);
        }
        else
        {
            printf("Error al crear la colección '%s' en la base de datos '%s'.\n", coleccion, basededatos);
        }
    }
    else
    {
        printf("Operación no válida.\n");
    }

    return 0;
}
