#bin/bash/!

wget https://raw.githubusercontent.com/ComputoCienciasUniandes/MetodosComputacionalesLaboratorio/master/2015-V/actividades/lottery/lottery.csv
awk -F"," '{if($1==201315401) print $2}' lottery.csv
head -1 lottery.csv