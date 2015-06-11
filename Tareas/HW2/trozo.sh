#Tarea 2 Métodos Computacionales 
#Miguel Angel Rojas Aparicio
#Punto 3b

#Recibe el nombre del archivo $3 y la posición de caracteres $1 inicial y $2 final

#Comando cut, con la opción -b, me permite imprimir en la terminal la parte del archivo que se encuentra entre la posición inicial y final incluidos

cut -b$1-$2 $3
