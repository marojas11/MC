#Escriba un script de bash que reciba tres argumentos, el nombre de un archivo csv,
#el número de la columna para el eje horizontal y el número de la columna para el eje
#verticual y que haga con gnuplot una gráfica de dispersión con puntos visibles y
#unidos por líneas rectas. Haga pruebas con el archivo joviansatellites.csv

# Parametros: $1 nombre del archivo  $2 numero de la columna eje x $3 numero de columna eje y



gnuplot <<EOF
set term dumb 
set datafile separator ","
plot "$1" using $2:$3 with linesp 

EOF