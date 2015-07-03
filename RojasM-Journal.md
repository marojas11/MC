#Bitácora Métodos Computacionales
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

####Primer Laboratorio
Esta sesión de laboratorio me pareció bastante interesante aunque el tiempo fue demasiado corto para tantas actividades por realizar, o tal vez por lo que apenas empiezo a familiarizarme de nuevo con estos comandos. 
El ejercicio de markdown me permitió entender el funcionamiento de su codigo y las posibilidades que tienen estos archivos para escribir texto de una forma rápida y sencilla. Además de agregar fácilmente lineas de código resaltadas en el texto.
Los ejercicios de bash me han permitido entender mejor el funcionamiento de los comandos de awk, los cálculos en construcción a doble paréntesis, ciclos, comandos curiosos como figlet para cambiar a un formato gráfico las palabras. 

####Clase 
Introducción, Git y Unix 

[Slides](https://github.com/ComputoCienciasUniandes/MetodosComputacionales/blob/master/slides/2015-V/01-Intro.pdf)

####HandsOn1
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
[Archivos](https://github.com/marojas11/MC/tree/master/HandsOn/01)

##Clase 3
###2/06/2015 
####Caracteres Especiales

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


[Más sobre Regexp y C](https://github.com/ComputoCienciasUniandes/MetodosComputacionales/blob/master/slides/2015-V/02-regexp%2C%20gnuplot%20y%20C.pdf)

Sed para usar expresiones regulares cuando no se que editor de texto me sirve ;(
```
 sed -E 's/\(.*\)//g' claseSem2.txt 
 sed -E 's/^ *//g' claseSem2a.txt
 sed -E 's/ +/,/g' claseSem2.txt 
```

####Gnuplot
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
gnuplot> set term 'qt'
gnuplot> set parametric
gnuplot> set size ratio 1
gnuplot> plot cos(t),sin(t)
gnuplot> unset parametric
gnuplot> splot x**2+y**2
gnuplot> set datafile separator ","
gnuplot> plot "joviansatellites.csv" using 2:3 with lines
gnuplot> plot "joviansatellites.csv" using 2:3 with circles
gnuplot> plot "joviansatellites.csv" using 2:3 with linesp
#Crear Funciones !!!
gnuplot> quad(x)=x**2
gnuplot> cube(x)=x**3
#Archivos
gnuplot> plot "joviansatellites.csv" using (cube($2)):(quad($3))
```


PAaa integrar gnuplot con bash
```
gnuplot <<EOF
.
.
.
EOF
```
**log** para hacer entradas a la bitacora

####SSH
Entrar a compufísica desde casa 
```
ssh ma.rojas11@compufi3.uniandes.edu.co 
```
Descargar archivos `sftp` comandos: get

####Hands on 2

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
[Archivos](https://github.com/marojas11/MC/tree/master/HandsOn/02)


##Clase4
###03/06/2015
####Laboratorio 2

No sé si fue suerte o no pero me van a revisar mi primer taller :( espero que me vaya bien, Para saberlo hice awk, fue casi automático, lo único fue cambiar el separador y todo bien. Hacer el punto de expresiones regulares no fue nada fácil, tuve que entenderlos casi a las malas... 
Punto a punto fui haciendo los respectivos reemplazos y obtuve que el de menor cambio porcentual es la Registraduría, algo bastante "comun" nada sorprendente.
Con gnuplot he logrado comprobar la linealidad de la ley de kepler a través de los reemplazos correspondientes y su correcta alimentación 

[Files ](https://github.com/marojas11/MC/tree/master/Talleres/Taller2)

####Tasas de Cambio: Dolares
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
####Información de Expansion del Universo
ley de expasion de Hubble

realizar un fig o regresion 
```
y(x)=m*x+b

fit y(x)  'galaxies.csv' using 2:3 via m,b
replot 
```
####Lenguaje C
Se debe compilar
```
gcc -o integers.out integers.c
```

##Clase5
###05/06/2015
####Laboratorio 3
Enviar archivos de c a un archivo en markdown a traves de bash

```
for file in $(ls *.c)
do
echo "nombre de archivo:$file">>arch.md
```

[Solución al Taller 3](https://github.com/marojas11/MC/tree/master/Talleres/Taller3)


####Clase
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

[more about Python](https://github.com/ComputoCienciasUniandes/MetodosComputacionales/blob/master/slides/2015-V/03-Python.pdf)

####Tarea
```
set dumb plot
```
Hacer un ciclo

####HandsOn 3 

Ejercicios de Python 
[Archivos](https://github.com/marojas11/MC/tree/master/python/exercises)


##Clase6
###09/06/2015

Notebooks de ipython

Problema de los 3 cuerpos, mathematica
```

f[n_]=Sum[If[i=!n,1/((x_n-x_i)^2+(y_n-y_i)^2)^3/2{x_i-x_n,y_i-y_n},{0,0}],{i,1,3}];

```
####HandsOn4

BashProfile-Make-Python

Make

Es para manejar la compilación de programas escritos en lenguejes tales como C, build manager, build file

+ very cryptic little language,
+ Make for intern at Bell Labs in 1975. 
+ A Makefile describes how files depend on each other, and how to update out-of-date files.
+ Use patterns, rules, and variables to eliminate redundancy.
+ Use macros to control operation.
+ Makefile

[Archivos](https://github.com/marojas11/MC/tree/master/HandsOn/04)

####Proyecto
Los diferentes lenguajes de programación que hemos aprendido en esta primera etapa del curso ayudan a construir una buenas bases para la edificación de diversos programas que sean de gran utilidad para las tareas que realizamos hoy en día. Ciclos, gráficas, manejo de archivos y bases de datos son fundamentales para resolver problemas tanto físicos como matemáticos que son demasiado complicados para realizar a mano. Me gustaría poder resolver ecuaciones diferenciales parciales de una forma más sencilla debido a su amplia aplicación entre ellos los problemas de transferencia de calor, masa y momentum, Blasius para capa límite.

##Clase7
###10/06/2015
####Laboratorio 4

Experimento 1:  Maxwell- Boltzman

[Solución](https://github.com/marojas11/MC/tree/master/Experimentos/Exp1)

####Matplotlib

+ pylab
+ frontend
+ backend: Artistas

Uso estandar de Matplotlib

  + Crear una figura
  + Generar ejes y subplots
  + Usar métodos de ayuda sobre los ejes
  ```
  fig=figure()
  ax1=fig.add_axes([0,.38,.7,.3])
  ax1.set_xlabel("x1")
  plot(range(10))
  show()
  
  ```
  Animaciones a mano, con un for y guardado en imágenes que se puedan unir en un mencoder, convert
  
  [Ejemplos](https://github.com/ComputoCienciasUniandes/MetodosComputacionales/blob/master/slides/2015-V/05-matplotlib%20-%201.ipynb)
  [Ejemplos 2](https://github.com/ComputoCienciasUniandes/MetodosComputacionales/blob/master/slides/2015-V/05-matplotlib%20-%202.ipynb)
####HandsOn5

  Gráficas en matplotlib con una gran cantidad de posibilidades de edición además de las animaciones 
  Para graficar las figuras de Lissajous usé las siguientes líneas
```
figure(figsize=(20,20))
def x(t,A,a,d):
    return A*sin(a*t+d)
def y(t,B,b):
    return B*cos(b*t)
d=pi/2
t1=np.arange(0.0,2*pi,0.01)
c=0
for a in range(1,6,1):
    for b in range (2,7,1):
        c+=1
        subplot(5,5,c)
        plot(x(t1,1,a,d), y(t1,1,b) )
       
        tick_params(axis='x', which='both',  bottom='off',  top='off',  labelbottom='off')
        tick_params(axis='y', which='both',  right='off',  left='off',  labelleft='off')
 ```
 Obtuve la siguiente imágen
 
 ![](https://raw.githubusercontent.com/marojas11/MC/master/HandsOn/05/lissajous.png)
 
 [Archivos](https://github.com/marojas11/MC/tree/master/HandsOn/05)
 
##Clase8
###13/06/2015

####HandsOn6
Landau
Errors and Uncertainties in Computation:

**Tipos de Errores**

1. Blunders or bad theory --> Wrong data files, typography
2. Random Errors          --> Fluctuations, reproducibility
3. Aproximation Errors    --> Simplifying, aproximations, algorithmic error
4. Round-off Errors       --> Floating-point numbers,
    - Subtractive cancellation
    - Round off error in a single step
    - Round off error accumulation
+ Errores en funciones Bessel
    - Relaciones numéricas Recursivas
+ Error experimental en investigación
    - Errores de aproximación
    - Errores de redondeo
    - Error assessment (valoración de errores)
  

  [Archivos](https://github.com/marojas11/MC/tree/master/HandsOn/06)

##Clase9
###16/06/2015
####Interpolación
Libro de Sherer cap2

+ spline cubic...
+ Lagrange: polinomios
  (xo,yo)...(xk,yk) Encontrar el polinomio de orden k que pasa por todos los puntos.

  ```
from scipy import interpolate
from scipy_optimize import root
from IPython display import HTML
función np.polyld([0,1]) regresa una función 
  ```
+ Diferencias divididas

+ Scipy Interpolate
  1-D function e
  genfromtxt con urls
  2-D 
  np.mgrid para evaluar funciones de varias dimensiones
  plt.pcolor para colorear arreglos,
+ Criterios de mínimos cuadrados
  Para que pasen cerca a los puntos sin obligarlos a pasar
  polifit
  curvefit
  poli1d
  Regresión Hubble
  p0(0,0) parametros iniciales

[Examples](https://github.com/ComputoCienciasUniandes/MetodosComputacionales/blob/master/slides/2015-V/06-Interpolation.ipynb)

####HandsOn7

Interpolación y Ajustes

Para realizar el ajuste usé la siguiente ecuación 

$\mathbf{B}({\mathbf{r}})=\frac{\mu_{0}}{4\pi}(\frac{2\mathbf{m}}{r^{3}}).$

Luego con la ayuda de curve_fit obtuve el valor de la constante y despejé el momento magnético
```
poly=genfromtxt("campoMagnetico.tsv",delimiter="\t")
x=poly[1:6,0]/100.0
B=poly[1:6,1]/10.0**6
def func(x,a):
    return a/x**3
fit=curve_fit(func, x, B)
print "El momento magnético corresponde a: ",  fit[0][0]/(10.0**-7*2)
```
Obtuve esta gráfica con un muy buen ajuste

![](https://github.com/marojas11/MC/blob/master/HandsOn/07/momentoMagnetico.png)

[Archivos](https://github.com/marojas11/MC/tree/master/HandsOn/07)

####Proyecto
Teniendo en cuenta que los notebook de python tienen una más amplia oferta de funciones y comando a para trabajar, además de que es muy gráfico y permite una fácil visualización mientras la versión sea la correcta, me gustaría implementar una función que permita visualizar de una mejor manera el comportamiento de las funciones de transferencia de masa y calor, como por ejemplo la función desarrollada por Blasius para capa límite


##Clase10
###17/06/2015
####Laboratorio 6

Realización del Taller 4. A partir del la realización de un **cubic spline** obtuve  la siguiente tabla.

|     x        |      y     |
|--------------------|-----------------|
| 0.138490669327 | 2.30060161547 |
| 0.326226647315 | 2.13557983804 |
| 0.513962625304 | 1.39719881749 |
| 0.701698603292 | 0.417206585909 |
| 0.889434581281 | -0.508199547139 |
| 1.07717055927 | -1.19852808033 |
| 1.26490653726 | -1.4736082803 |
| 1.45264251525 | -1.18833620006 |
| 1.64037849323 | -0.55652504403 |
| 1.82811447122 | 0.171218763615 |
| 2.01585044921 | 0.779865462088 |
| 2.2035864272 | 1.18452422396 |
| 2.39132240519 | 1.37314208846 |
| 2.57905838318 | 1.41448149449 |
| 2.76679436116 | 1.41176113173 |
| 2.95453033915 | 1.38826705753 |
| 3.14226631714 | 1.28426676118 |
| 3.33000229513 | 1.11616041679 |
| 3.51773827312 | 0.902468822018 |
| 3.70547425111 | 0.661712774525 |
| 3.89321022909 | 0.412413071972 |
| 4.08094620708 | 0.173090512018 |
| 4.26868218507 | -0.0349501128801 |
| 4.45641816306 | -0.0704087548339 |

La solución completa se encuentra en el siguiente [Cuaderno de Ipython](https://github.com/marojas11/MC/blob/master/Talleres/Taller4/Taller4.ipynb)


####Github

Ramas,branches,merge
SourceTree

```
git init
echo "Primero" >>a1.txt
git add a1.txt
git commit -m"Primero"
#Historia
git log
git checkout 128husdhq7e #hash, puede ser los iniciales
git status
git push
git pull
git clone
#Ramas, el asterisco muestra la actual
git branch
git branch rama1
#Cambiar a otra rama
git checkout rama1
echo "Primero2" >>a2.txt
git add a1.txt
git commit -m"Otro commit"
#Merge
git merge rama1
#Etiquetas
git tag -a 
```
####HandsOn 8 
Finding roots- Jupiter

[Archivos](https://github.com/marojas11/MC/tree/master/HandsOn/08)

##Clase11
###19/06/2015
####Laboratorio 7

Realización del Taller 5 Fenómeno de Gibbs - Fourier - Git Tags

[Solución en Ipython](https://github.com/marojas11/MC/blob/master/Talleres/Taller5/gibbs.ipynb)

####Transformada Discreta de  Fourier y filtros en imágenes 

Se debe utilizar con puntos igualmente  espaciados (criterio de optimización: uniformemente  muestreada)

Si no se debe hacer interpolación. 

Hay una cantidad de puntos óptimos con la transformada rápida de fourier con potencias de 2

[examples](https://github.com/ComputoCienciasUniandes/MetodosComputacionales/blob/master/slides/2015-V/07-Fourier.ipynb)

####HandsOn 9
Series de Fourier- DFT y Procesamiento de Imágenes

![Lena](https://raw.githubusercontent.com/ComputoCienciasUniandes/MetodosComputacionales/master/hands_on/figures/horizontallena.png?raw=true%20=400x)

[Archivos](https://github.com/marojas11/MC/tree/master/HandsOn/09)

goo.gl/f7bhZZ

##Clase12
###23/06/2015
####Derivadas Numéricas
Se deriva una función con valores sin incertidumbre asociada. Tabla de valores espaciados, criterios de optimización. 
La tarea es derivar en cada uno de los puntos de acuerdo a la definición de derivada

$f_{h}(x)=f\prime(x)+O(h)$

forma en que se escala el error

Diferencias adelantadas, atrasadas con el stepsize

Métodos de extrapolación, estimar algo

[Numerical Derivatives](https://github.com/ComputoCienciasUniandes/MetodosComputacionales/blob/master/slides/2015-V/08-Numerical%20Derivatives.ipynb)

####HandsOn10: Ciclo Solar

Por medio del procesamiento de los datos para las observaciones de manchas solares se observó un periodo aproximadio de 10 años. La limpieza del ruido para las frecuencias altas permitió determinar una mejor apreciación de su comportamiento. 

![](https://github.com/marojas11/MC/blob/master/HandsOn/10/cicloSolar.png)

##Clase13
###24/06/2015
####Laboratorio 8

Taller 6 - Cinemática. - GPS- Localización geográfica, vectorización 

[Cuaderno de Ipython con Soluciones](https://github.com/marojas11/MC/blob/master/Talleres/Taller6/Taller6.ipynb)

####Integrales Numéricas 
Intervalos Uniformes 

Método trapezoidal, (b-a)/2*(f(a)+f(b)) área del trapecio

Método de Simpson.interpolación de orden 2. f*(x)=f(a)*(x-c)(x-b)/((a-c)(a-b))+f(c)...+f(b)...


Integración Gaussiana (Cuadraturas).Se busca elegir los valores de las abcisas (x_n).
Buscar exactitud para polinomios de grado 2n-1 o menores. Interpolan los x_n con un polinomio de grado n-1. 

[Numerical Integrates](https://github.com/ComputoCienciasUniandes/MetodosComputacionales/blob/master/slides/2015-V/09-Numerical%20Integration.ipynb)

####Hands On 11

Integrales numéricas - Simpson Compuesto 3/8

[Solution Notebook](https://github.com/marojas11/MC/blob/master/HandsOn/11/HandsOn11.ipynb)

##Clase14
###26/06/2015
####ODEs
Ecuaciones Diferenciales Ordinarias

Método de Euler y Regla del Punto Medio

RungeKutta 3ord-4ord

El problema de Kepler

[ODEs](https://github.com/ComputoCienciasUniandes/MetodosComputacionales/blob/master/slides/2015-V/10-ODE.ipynb)

##Clase15
###30/06/2015
####ODEs- 
Metodos adaptativos

Cambiar el time step para estimar el error local no el global. 

Metodos Multipaso. Adam-Bashfort(documentación para scipy)
Resolver Bessel
Sistema de Lorentz


##Clase16
###1/07/2015
####ODEs-Adams-Bashforth- Calculos Simbolicos en Python



##Clase17
###3/07/2015
####PDEs Partial Differential Equations

Condiciones Periódicas, condiciones iniciales absorbentes. 




