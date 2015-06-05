cd 
cd c-examples/src

for file in $(ls)
do
echo "Nombre del archivo: $file" >>  c-examples.md
echo "\`\`\`">>  c-examples.md

cat $file >> c-examples.md
echo "\`\`\`">>  c-examples.md
done
mv c-examples.md /usuarios/homenfs20/ma.rojas11/MC/Talleres/Taller3/