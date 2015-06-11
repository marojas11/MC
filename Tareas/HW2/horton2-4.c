/*Tarea 2 Métodos Computacionales */
/*Miguel Angel Rojas Aparicio */
/*Programa 2-4 
Cálculo del salario por hora recibido en base a el salario en una semana y el número de horas trabajadas, suministrados por el usuario*/
#include <stdio.h>

int main(void)
{
/*variables*/
double salario;
double horas;
double prom;
int centavos;
int entero;
/*Lectura del salario y las horas*/
printf("Insert your weekly pay in dollars: ");
scanf("%lf", &salario);

printf("Insert the number oh hours worked: ");
scanf("%lf", &horas);

/*Debido a que el precio es pedido en Dólares con centavos es necesario hallar valores enteros*/
/*Salario en Dólares unitarios*/
entero=(int)(salario/horas);
/*Promedio de salario en tipo double*/
prom=salario/horas;
/*Cálculo de los centavos en base al residuo que queda de expresar dólares unitarios más ajuste a la unidad 0.5*/
centavos=(int)(100.0*(salario/horas-entero)+0.5);
/*Expresión final del salario, %.0lf pra indicar cero cifras decimales en el double y %d para enteros*/
printf("Your average hourly pay rate is %.0lf dollars and %d cents\n",prom,centavos);
return 0;
}
