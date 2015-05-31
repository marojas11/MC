Ta#Punto 2 Tarea 1


wget https://github.com/ComputoCienciasUniandes/MetodosComputacionales/raw/master/homework/2015-V/HW1/kepler.csv

sed "1 d" kepler.csv > a.csv

echo "El número de planetas en el archivo es de: "

wc -l a.csv > b.txt
sed 's/a.csv//g' b.txt >a.txt

cat a.txt


echo "La cantidad de planetas con masa menor a una centésima de la masa de Júpiter es: "

awk -F"," '{if ($2<0.001) print $1}' a.csv >b.csv
wc -l b.csv > b.txt
sed 's/b.csv//g' b.txt > a.txt
cat a.txt
sleep 5
echo "Y sus nombres son: "
sleep 5
cat b.csv

sort --field-separator="," --key=6 -n a.csv >c.csv
head -1 c.csv > d.csv
echo "El planeta con menor periodo es: "

awk -F"," '{print $1 and ", con un periodo de " and $6}' d.csv



rm b.txt
rm a.txt
rm a.csv
rm b.csv
rm c.csv
rm d.csv