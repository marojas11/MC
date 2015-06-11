#!/bin/bash
#Tarea 2 Métodos Computacionales 
#Miguel Angel Rojas Aparicio
#Para el punto 3c utilicé estos comandos
#	El primer sed para eliminar los número de Página
#		sed -E 's/Page [0-9]+//g' bigenigna.txt > a.txt
#	El segundo para eliminar los saltos de linea
#		sed ':a;N;$!ba;s/\n//g' a.txt > bigenigna.txt 

#Punto 3d

# Recibe como argumento $1 nombre del archivo
#Guardo el archivo como variable
a=$1
#Creación del ciclo en para decodificar 10 veces, tuve dificultades para poder realizarlo con los corchetes, no me corría, así que lo hice a la antigua
for i in 1 2 3 4 5 6 7 8 9 10
do
#Serie de intercambios realizados con el script flip.sh guardados al archivo con el número de ciclo
sh flip.sh z v $a |sh flip.sh y h    |sh flip.sh x p    |sh flip.sh u w     |sh flip.sh v z    |sh flip.sh u s    |sh flip.sh t f    |sh flip.sh s g     |sh flip.sh r x    |sh flip.sh q e    |sh flip.sh p d    |sh flip.sh o r     |sh flip.sh n m    |sh flip.sh m b    |sh flip.sh l j    |sh flip.sh k a     |sh flip.sh j c    |sh flip.sh i y    |sh flip.sh h k    |sh flip.sh g t     |sh flip.sh f q    |sh flip.sh e o    |sh flip.sh d l    |sh flip.sh c w     |sh flip.sh b n    |sh flip.sh a i  > $i.txt 

#Realimentación del archivo obtenido al renovar el ciclo
a=$i.txt

done
#Impresión de la frase obtenida
cat $a

#Frase obtenida: dearstudentrunyouhavebeendiscovered


