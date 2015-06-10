#Primera Semana
##Primera Clase <date>
###27/05/2015
¡Hola mundo!, comienzo **Metodos Computacionales**

Herramientas del curso

+ git
+ GitHub
+ bash
+ C
+ Python


y Metodos tales como

1. Interpolacion
2. Fourier
3. Diferenciacion e Integracion
4. EDO
5. EDP
6. Metodos de MonteCarlo




##Clase 2
###29/05/2015

###Primer Laboratorio
Esta sesión de laboratorio me pareció bastante interesante aunque el tiempo fue demasiado corto para tantas actividades por realizar, o tal vez por lo que apenas empiezo a familiarizarme de nuevo con estos comandos. 
El ejercicio de markdown me permitió entender el funcionamiento de su codigo y las posibilidades que tienen estos archivos para escribir texto de una forma rápida y sencilla. Además de agregar fácilmente lineas de código resaltadas en el texto.
Los ejercicios de bash me han permitido entender mejor el funcionamiento de los comandos de awk, los cálculos en construcción a doble paréntesis, ciclos, comandos curiosos como figlet para cambiar a un formato gráfico las palabras. 

###Clase 
HandsOn1
Ya manejo git al fin!. Luego de intentar demasiadas veces subir un archivo al repositorio entendí el ciclo diario. 
```
git pull origin
git add carpeta/
git add archivo.extension 
git commit -a -m "Finish"
git push origin master
```
Me pareció bastante interesante poder conocer anteriores commits realizados en git, además de toda la historia guardada por medio de los commits, no tenía idea que se pudiera hacer ello. 

En clase exploramos ssh para ir a una página de internet sdf.org tal como super dimensional fortress en la cual hay muchas actividades disponibles en linea como juegos, chats, entre otros y tiene ya muchos años de existencia. 
Por último un Cambio de variables de **bash** hacia *awk*

```
varbash

awk -v varawk=$varbash

var=$(echo $((1+2)))
  echo $var
```
#Semana 2
##Clase 3
###2/06/2015 
###Caracteres Especiales

+ ^ inicio de linea
+ $ fin de linea
+ . cualquier caracter
+ .* 
+ .+ varios caracteres 
+ (a|b) 
+ \( expresion especial
+ [ayz\(]
+ [a-z] alfabeto
+ [0-1] numeros
+ \d digitos
+ \D No digitos
+ [^0-3] No numeros

Sed para usar expresiones regulares cuando no se que editor de texto me sirve ;(
```
 sed -E 's/\(.*\)//g' claseSem2.txt 
 sed -E 's/^ *//g' claseSem2a.txt
 sed -E 's/ +/,/g' claseSem2.txt 
```

###Gnuplot
Programa para realizar gráficas
```
gnuplot
set term dumb #Visor Ascii
plot x
plot [0:2*pi] sin(x)
```

gnuplot entra a un sistema distinto, es necesario usar nuevos comandos
```
gnuplot> set term 'qt' #Gráficas aparte

gnuplot> plot sin(x)
gnuplot> plot sin(x)/x
gnuplot> plot sin(x)**x
gnuplot> plot x**x
gnuplot> plot 1/x
gnuplot> exit

```
Tambien paramétricas
```
ma.rojas11@compufi17:~/MC> gnuplot
gnuplot> set term 'qt'
gnuplot> set parametric
        dummy variable is t for curves, u/v for surfaces
gnuplot> plot cos(t),sin(t)
gnuplot> set size ratio 1
gnuplot> plot cos(t),sin(t)
gnuplot> unset parametric
        dummy variable is x for curves, x/y for surfaces
gnuplot> splot x**2+y**2
gnuplot> set datafile separator ","
gnuplot> plot "joviansatellites.csv" using 2:3
gnuplot> plot "joviansatellites.csv" using 2:3 with lines
gnuplot> plot "joviansatellites.csv" using 2:3 with circles
gnuplot> plot "joviansatellites.csv" using 2:3 with linesp
#Crear Funciones !!!
gnuplot> quad(x)=x**2
gnuplot> cube(x)=x**3
#Archivos
gnuplot> plot "joviansatellites.csv" using (cube($2)):(quad($3))
```
Para SSh
ssh ma.rojas11@compufi3.uniandes.edu.co

PAaa integrar gnuplot con bash
```
gnuplot <<EOF
.
.
.
EOF
```
log para hacer entradas a la bitacora

###Handson2

1. Expresión Regular ` ^.{4}\s ` donde el gorro representa inicio de linea, punto cualquier caracter, {4} que se repite 4 veces y \s para el espacio vacío. Permite hacer búsquedas o reemplazos de palabras de cuatro letras al inicio de una línea
2. En bash
```
sed -E 's/^.{5}$//g' wikipedia.txt >a.txt
sed -E 's/^\s{4}//g' a.txt > wikipedia.txt 
sed -E 's/(: )/\t/g' wikipedia.txt > a.txt
```
3. No me funcionó el link, sin embargo utilizare un link encontrado por medio de google para trabajar [pi 10 million digits](http://pi.karmona.com/). Usando `sed -E 's/<[^>]*>//g'  ` para eliminar todos los códigos html
```
sed -E 's/<[^>]*>//g' pi.txt > pi2.txt
sed "1d" pi2.txt >pi.txt
sed -E 's/^.+\./3./g' pi.txt > pi2.txt 
sed -E 's/(.{20})/$1\n/g' pi2.txt >PIslices20.dat

```



##Clase4
###03/06/2015
###Laboratorio

No sé si fue suerte o no pero me van a revisar mi primer taller :( espero que me vaya bien, Para saberlo hice awk, fue casi automático, lo único fue cambiar el separador y todo bien. Hacer el punto de expresiones regulares no fue nada fácil, tuve que entenderlos casi a las malas... 
Punto a punto fui haciendo los respectivos reemplazos y obtuve que el de menor cambio porcentual es la Registraduría, algo bastante "comun" nada sorprendente
Con gnuplot he logrado comprobar la linealidad de la ley de kepler a través de los reemplazos correspondientes y su correcta alimentación 

###Tasas de Cambio: Dolares
Limitar google site:http://...
grep para filtrar lineas que nos interesa
mac > pbcopy
Borrar slash, puntos letras 
`sed -E 's/<[^>]*>//g'  ` ^ para negar algo en regexp, usado para borrar codigo html
usar w3m para renderizar página web
sed 
```
gnuplot
set datafile separator
plot 'dollar.csv' 
set xdata time #fijar el tipo de datos en x
set timefmt "%m/%d/%Y"
```
##Información de Expansion del Universo
ley de expasion de Hubble

realizar un fig o regresion 
```
y(x)=m*x+b

fit y(x)  'galaxies.csv' using 2:3 via m,b
replot 
```
###Lenguaje C
Se debe compilar
```
gcc -o integers.out integers.c
```

##Clase5
###05/06/2015
###Laboratorio
Enviar archivos de c a un archivo en markdown a traves de bash

```
for file in $(ls *.c)
do
echo "nombre de archivo:$file">>arch.md
```


###Clase
MAke ->proxima clase
Para prerrequisitos

Ejercicio de la esfera [taller3](https://github.com/marojas11/MC/tree/master/Talleres/Taller3)
Metodo de MonteCarlo. Numeros aleatorios, áreas
`set view equal xyz`
####Python
filosofía, estruucturas, énfasis, simple, indentación importante y funcional

Interfaz: Scripts, sin arandelas, cuadernos de ipython, fases y ambientes de desarrollo
Python es un lenguaje orientado a objetos, aritmética, cadenas de caracteres, ascii, numpy, scipy, turtle,solicitar información al usuario, expresiones booleanas, condicionales, ciclos con while, i .. else, for, listas de distintos tipos, si es negativo toma de atras para adelante (slice nutation),
Diccionarios

Ipython, markdown, secciones y subsecciones, arrays (numpy),vectorización de funciones, rapidez de código, funciones, variables locales o globales, funciones predeterminadas, funciones recursivas (stack de llamados de python, referencia al late) 

####Tarea
```
set dumb plot
```
Hacer un ciclo


##Clase6
###09/06/2015

Notebooks de ipython

Problema de los 3 cuerpos, mathematica
```

f[n_]=Sum[If[i=!n,1/((x_n-x_i)^2+(y_n-y_i)^2)^3/2{x_i-x_n,y_i-y_n},{0,0}],{i,1,3}];

```
####HandsOn4: Make
Es para manejar la compilación de programas escritos en lenguejes tales como C, build manager, build file

+ very cryptic little language,
+ Make for intern at Bell Labs in 1975. 
+ A Makefile describes how files depend on each other, and how to update out-of-date files.
+ Use patterns, rules, and variables to eliminate redundancy.
+ Use macros to control operation.

+Makefile
    
####Proyecto
Los diferentes lenguajes de programación que hemos aprendido en esta primera etapa del curso ayudan a construir una buenas bases para la edificación de diversos programas que sean de gran utilidad para las tareas que realizamos hoy en día. Ciclos, gráficas, manejo de archivos y bases de datos son fundamentales para resolver problemas tanto físicos como matemáticos que son demasiado complicados para realizar a mano. Me gustaría poder resolver ecuaciones diferenciales parciales de una forma más sencilla debido a su amplia aplicación entre ellos los problemas de transferencia de calor, masa y momentum, Blasius para capa límite.
