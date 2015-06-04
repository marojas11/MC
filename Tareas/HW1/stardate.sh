#Punto 3 Tarea1
#Se debe ingresar un año mayor a 1500 para obtener resultados de historia

#Descargar archivo de la historia mundial y las estrellas 
wget https://github.com/ComputoCienciasUniandes/MetodosComputacionales/raw/master/homework/2015-V/HW1/hyg.csv
wget https://github.com/ComputoCienciasUniandes/MetodosComputacionales/raw/master/homework/2015-V/HW1/worldhistory.tsv
#Impresion de salidas configurada con figlet
echo "#####################################################################"
echo "StarDate" | figlet
echo "#####################################################################"
echo "$1" | figlet
#grep busca el año ingresado
grep "$1" worldhistory.tsv > a.tsv
#awk imprime la historia de ese año
awk -F"	" '{print $2}' a.tsv
rm a.tsv
#Construccion de doble parentesis para el cálculo del rango de años que lleva viajando la luz de las estrellas
a=$((2015-$1))
#Impresion de salidas 
echo "#####################################################################"
#echo agrega el encabezado a un archivo
echo "  RA/°   DEC/°   HIP No." > a.csv
#awk evalua el rango de lo que lleva viajando la luz de la estrella e imprime su posición y nombre bajo el encabezado
awk -F"," -v va=$a '{if($10>va && $10<(va+1)) print $8 and "," and $9 and "," and $2 }' hyg.csv>>a.csv
#Head imprime las primeras 5 y el encabezado
head -6 a.csv

rm a.csv

