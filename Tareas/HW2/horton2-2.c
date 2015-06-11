/*Tarea 2 Métodos Computacionales */
/*Miguel Angel Rojas Aparicio */
/*Programa 2-2 
Permite calcular el área en yardas de una habitación con medidas dadas en pies y pulgadas*/
#include <stdio.h>

int main(void)
{
/*Declaración de variables*/
double inches;
double yards;
double feet;
double width;
double length;
double area;
/*Factores de conversión*/
double in_yd=36;
double in_ft=12;

printf("Teclee el ancho del cuarto en pies y pulgadas\nft: ");
/*Escaneo de los parámetros introducidos por el usuario*/
scanf("%lf", &feet);
printf("in: ");
scanf("%lf", &inches);
/*Cálculo del ancho en yardas*/
width=feet/in_yd*in_ft+inches/in_yd;

printf("Teclee el largo del cuarto en pies y pulgadas\nft: ");
scanf("%lf", &feet);
printf("in: ");
scanf("%lf", &inches);
/*Cálculo del largo en yardas y el área en yd^2*/
length=feet/in_yd*in_ft+inches/in_yd;
area=width*length;

printf("El área en yardas cuadradas es %.2lf yd^2\n",area);
return 0;
}
