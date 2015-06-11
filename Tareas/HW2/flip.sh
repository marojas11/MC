#Tarea 2 Métodos Computacionales 
#Miguel Angel Rojas Aparicio
#Punto 3a

#Recibe tres argumentos, $1 letra 1 y $2 Letra 2 a intercambiar, $3 Archivo de texto

#Primer sed para reemplazar la letra1 por puntos
#Segundo sed para reemplazar la letra2 por comas
#Tercer sed para realizar el intercambio de puntos a letra2
#Cuarto sed para realizar intercambio comas a letra1
# Pipes para mantener la cadena de reemplazos y finalmente imprimirlo en la terminal

sed -E 's/'$1'/./g' $3 | sed -E 's/'$2'/,/g'| sed -E 's/\./'$2'/g' | sed -E 's/\,/'$1'/g'
