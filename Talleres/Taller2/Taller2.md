#Punto 1 Loteria

```
wget https://raw.githubusercontent.com/ComputoCienciasUniandes/MetodosComputacionalesLaboratorio/master/2015-V/actividades/lottery/lottery.csv
awk -F"," '{if($1==201315401) print $2}' lottery.csv
head -1 lottery.csv
```
#Punto 2 regexp

```
wget https://raw.githubusercontent.com/ComputoCienciasUniandes/MetodosComputacionalesLaboratorio/master/2015-V/actividades/talleres/Taller2/pgn.dat

sed -E 's/\.//g' pgn.dat > pgn2.dat
sed -E 's/\,([0-9])/.\1/g' pgn2.dat> pgn.dat
sed -E 's/\s([0-9])/\t\1/g' pgn.dat > pgn2.dat
sed -E 's/\s(\()/\t\1/g' pgn2.dat>pgn.dat
sed -E 's/\)//g' pgn.dat>pgn2.dat 
sed -E 's/\(/-/g' pgn2.dat>pgn.dat 


sort --field-separator=$'\t' --key=4 -n pgn.dat > pgn2.dat
head -1 pgn2.dat

rm pgn2.dat pgn.dat
```
#Punto 3 Saturno
```
sed -E 's/^\s//g' orbital.csv > 1.csv
sed -E 's/\,([0-9])/\1/g' 1.csv> orbital.csv 
sed -E 's/\s+([0-9])/,\1/g' orbital.csv >1.csv

sed -E 's/([0-9])[R]/\1/g' 1.csv> orbital.csv
sed -E 's/([0-9])\.\,/\1,/g' orbital.csv<1.csv


gnuplot <<EOF

set datafile separator ","
plot "1.csv" using 3:4


EOF

```
