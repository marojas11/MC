#Metodos Computacionales

##Magistral
+ Git
+ Markdown
+ Bash
+ Python
+ Latex

[Repositorio](https://github.com/ComputoCienciasUniandes/MetodosComputacionales)

##Laboratorio
1. Markdown
2. Bash
  less para abrir csv
3. Python
4. Latex
5. Git
  git add para agregar archivos


[RepositorioLab](https://github.com/ComputoCienciasUniandes/MetodosComputacionalesLaboratoriom) inline or [repositorio propio][1]

[1]: https://github.com/marojas11/MC

```
#Metodos Computacionales

##Magistral
+ Markdown
+ Bash
+ Python
+ Latex

[Repositorio](https://github.com/ComputoCienciasUniandes/MetodosComputacionales)

##Laboratorio
1. Markdown
2. Bash
3. Python
4. Latex

[RepositorioLab](https://github.com/ComputoCienciasUniandes/MetodosComputacionalesLaboratoriom) inline or [repositorio propio][1]

[1]: https://github.com/marojas11/MC
```

```
#Punto2
for i in {1..1000}
do
  a=$((i*i))
  echo $i","$a >> punto2t1.csv
done
#Punto3
awk -F"," '{print $1 + $2 }' punto2t1.csv >>punto3t1.csv

```
```
#Punto4
echo $1, $2
a=$(($1 + $2))
echo $a
```