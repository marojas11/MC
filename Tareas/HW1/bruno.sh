#Punto 2 Tarea 1

# wget para obbtener el archivooooo kepler.csv
wget https://github.com/ComputoCienciasUniandes/MetodosComputacionales/raw/master/homework/2015-V/HW1/kepler.csv
#Punto a
#Eliminación de encabezados al eliminar la primera fila
sed "1 d" kepler.csv > a.csv
#Imprimir la salida
echo "El número de planetas en el archivo es de: "
#Imprimir el numero de lineas a un archivo
wc -l a.csv > b.txt
#Eliminación de codigos
sed 's/a.csv//g' b.txt >a.txt
#Impresión del numero de lineas
cat a.txt

#Punto b
echo "La cantidad de planetas con masa menor a una centésima de la masa de Júpiter es: "
#awk para decir el numero de planetas con menor masa que .001 en la columna 2 del archivo
awk -F"," '{if ($2<0.001) print $1}' a.csv >b.csv
#Imprimir el numero de planetas encontrados
wc -l b.csv > b.txt
sed 's/b.csv//g' b.txt > a.txt
cat a.txt
#Esperar 5seg
sleep 5
echo "Y sus nombres son: "
sleep 5
#Imprimir los nombres de los planetas
cat b.csv
#Punto c
#sort ordena los nombres por la columna 6 que corresponde al periodo orbital
sort --field-separator="," --key=6 -n a.csv >c.csv
#head imprime la primera linea de dicho archivo ordenado
head -1 c.csv > d.csv
echo "El planeta con menor periodo es: "

#awk me permite imprimir varias columnas al tiempo
awk -F"," '{print $1 and ", con un periodo de " and $6}' d.csv

#rm borra archivos innecesarios

rm b.txt
rm a.txt
rm a.csv
rm b.csv
rm c.csv
rm d.csv