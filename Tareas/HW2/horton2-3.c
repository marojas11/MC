/*Tarea 2 Métodos Computacionales */
/*Miguel Angel Rojas Aparicio */
/*Programa 2-3 
Programa para el cálculo del precio total de unos productos de un tipo y cantidad seleccionados por el usuario a un determinado precio*/
#include <stdio.h>

int main(void)
{
/*Declaración de constantes*/
double type1=3.50;
double type2=5.50;
/*Declaración de variables, int entero, double decimal*/
int type;
int quantity;
double total;

/*Escaneo del tipo de preferencia, 1 tipo 1, 2 tipo 2*/
printf("Teclee el tipo de producto de su preferencia (1/2): ");
scanf("%d", &type);
/*Escaneo de la cantidad a adquirir en enteros %d int*/
printf("Teclee la cantidad del producto: ");
scanf("%d", &quantity);
/*Cálculo del precio total sin el uso de un condicional aprovechando las características de los tipos de preferencia, y conociendo que el tipo 2 posee mayor valor que el tipo 1*/

total=(type1+(type2-type1)*(type-1))*quantity;
printf("El total es $%.2lf \n",total);
return 0;
}
