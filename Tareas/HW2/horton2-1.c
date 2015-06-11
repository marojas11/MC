/*Tarea 2 Métodos Computacionales */
/*Miguel Angel Rojas Aparicio */
/*Programa 2-1 */
/*Este programa permite realizar conversiones de pulgadas a pies y yardas*/
#include <stdio.h>

int main(void)
{
/*Declarar las variables segun su tipo*/
double inches; 
double yards;
double feet;
/*Factores de conversión*/
double in_yd=36;
double in_ft=12;
printf("Teclee una distancia en pulgadas(in): ");
/*Presentar una entrada de datos del usuario en la terminal, %lf para double*/
scanf("%lf", &inches);
/*Cálculos*/
feet=inches/in_ft;
yards=inches/in_yd;
/*Impresión en de varias variables en una sola linea, %lf para double*/
printf("La distancia en:\nPulgadas= %lfin\nPies= %lfft\nYardas= %lfyd\n",inches,feet,yards);
return 0;
}
