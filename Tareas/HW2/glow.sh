#!/bin/bash
#Tarea 2 Métodos Computacionales 
#Miguel Angel Rojas Aparicio
#Punto 1b

#Iniciar variable para el tiempo
tiempo=0
#Iniciar ciclo infinito
while :
do
#Indicar forma de terminar el ciclo infinito
echo "Presione ctrl+c para salir"
#Calcular aumento en la cuenta 
tiempo=$(($tiempo+1))
#Realizar el cálculo con bc para obtener el valor del coseno(c(wt)) al cuadrado y llevarlo a un archivo. w tiene el valor de 0.2 y t corresponde al valor de tiempo. Opción -l para usar el coseno
echo "c(0.2*$tiempo)^2" |bc -l >a.txt
#Asignar el cálculo de la función del radio a ingresar para generar los círculos
radio=$(cat a.txt)
#Eliminar archivos sobrantes
rm a.txt
#Generar círculos con radio como parámetro
sh circle.sh $radio
#Descansar 1seg
sleep 1
#Limpiar la pantalla
tiempo=$(($tiempo+1))
clear

done

