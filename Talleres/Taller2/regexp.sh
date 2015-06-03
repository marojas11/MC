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