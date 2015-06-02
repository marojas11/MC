#Primera Clase <date>
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


git pull origin
git commit -a -m "Finish"
git push origin master

#Semana 2
##Caracteres Especiales
```
^
$
.
.*
.+
(a|b)
\(
[ayz\(]
[a-z] alfabeto
[0-1]
\d
\D
[^0-3]
```
```
 sed -E 's/\(.*\)//g' claseSem2.txt 
 sed -E 's/^ *//g' claseSem2a.txt
 sed -E 's/ +/,/g' claseSem2.txt 
```

##Gnuplot

```
gnuplot
set term dumb
plot x
plot [0:2*pi] sin(x)

ma.rojas11@compufi17:~/MC> gnuplot

        G N U P L O T
        Version 4.6 patchlevel 3    last modified 2013-04-12 
        Build System: Linux x86_64

        Copyright (C) 1986-1993, 1998, 2004, 2007-2013
        Thomas Williams, Colin Kelley and many others

        gnuplot home:     http://www.gnuplot.info
        faq, bugs, etc:   type "help FAQ"
        immediate help:   type "help"  (plot window: hit 'h')


gnuplot> set term 'qt'
Terminal type set to 'qt'
Options are '0 font "Sans,9"'
gnuplot> plot sin(x)
gnuplot> plot sin(x)/x
gnuplot> plot sin(x)^x
         non-integer passed to boolean operator

gnuplot> plot sin^x(x)
         undefined variable: sin

gnuplot> plot (sin(x))^x
         non-integer passed to boolean operator

gnuplot> plot (sin(x))**x
gnuplot> plot x**x
gnuplot> sin(x)
         ^
         invalid command

gnuplot> plot sin(x)
gnuplot> plot sin(x)
gnuplot> exit
ma.rojas11@compufi17:~/MC> gnuplot

        G N U P L O T
        Version 4.6 patchlevel 3    last modified 2013-04-12 
        Build System: Linux x86_64

        Copyright (C) 1986-1993, 1998, 2004, 2007-2013
        Thomas Williams, Colin Kelley and many others

        gnuplot home:     http://www.gnuplot.info
        faq, bugs, etc:   type "help FAQ"
        immediate help:   type "help"  (plot window: hit 'h')


gnuplot> set term 'qt'

Options are '0 font "Sans,9"'
gnuplot> plot sin(x)
gnuplot> set title sin(x)
         undefined variable: x

gnuplot> plot t
         undefined variable: t

gnuplot> plot x
gnuplot> plot x**x
gnuplot> plot 1/x
gnuplot> plot sin(x)
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
gnuplot> plot "joviansatellites.csv" using 2:3
gnuplot> plot "joviansatellites.csv" using 2:3 with lines
gnuplot> plot "joviansatellites.csv" using 2:3 with circles
gnuplot> plot "joviansatellites.csv" using 2:3 with linesp
gnuplot> quad(x)=x**2
gnuplot> cube(x)=x**3
gnuplot> plot "joviansatellites.csv" using (cube($2)):(quad($3))


```
PAra SSh
ssh ma.rojas11@compufi3.uniandes.edu.co

PAra integrar gnuplot con bash
```
gnuplot <<EOF
.
.
.
EOF
```
log para hacer entradas a la bitacora

###Handson2

1. Expresión Regular ` ^.{4}\s ` donde el gorro representa inicio de linea, punto cualquir caracter, {4} que se repite 4 veces y \s para el espacio vacío. Permite hacer búsquedas o reemplazos de palabras de cuatro letras al inicio de uan línea
2. En bash
```
sed -E 's/^.{5}$//g' wikipedia.txt >a.txt
sed -E 's/^\s{4}//g' a.txt > wikipedia.txt 
sed -E 's/(: )/\t/g' wikipedia.txt > a.txt

2. 
