#!/bin/bash
#Tarea 2 Métodos Computacionales 
#Miguel Angel Rojas Aparicio
#Punto 1a

#Parámetro $1 el radio de un círculo, positivo y menor igual a 1

#Abrir gnuplot para realizar los círculos desde bash
gnuplot <<EOF
#Configurar que imprima en la terminal
set term dumb 
#Configurar la relación entre los ejes, para que me imprimiera el círculo tal y como se mostraba en el enunciado
set size ratio 0.5
#Eliminar Borde
unset border
#Eliminar ejes x,y
unset xtics
unset ytics
#Establecer las medidas fijas para las gráficas en gnuplot
set xrange [-1:1]
set yrange [-1:1]
#Eliminar leyenda
set nokey
#Graficar con paramétricas
set parametric
#Fórmula del para graficar los círculos de acuerdo al radio ingresado
plot $1*cos(t),$1*sin(t)
EOF

