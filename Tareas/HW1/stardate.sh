wget https://github.com/ComputoCienciasUniandes/MetodosComputacionales/raw/master/homework/2015-V/HW1/hyg.csv
wget https://github.com/ComputoCienciasUniandes/MetodosComputacionales/raw/master/homework/2015-V/HW1/worldhistory.tsv

echo "#####################################################################"
echo "StarDate" | figlet
echo "#####################################################################"
echo "$1" | figlet

grep "$1" worldhistory.tsv > a.tsv
awk -F"	" '{print $2}' a.tsv
rm a.tsv

a=$((2015-$1))
echo "#####################################################################"
echo "  RA/°   DEC/°   HIP No." > a.csv
awk -F"," -v va=$a '{if($10>va && $10<(va+1)) print $8 and "," and $9 and "," and $2 }' hyg.csv>>a.csv
head -6 a.csv

