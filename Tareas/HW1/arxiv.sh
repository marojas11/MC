#Tarea1_Punto1

#Se debe recibir una palabra clave para que pueda ser corrido

#Curl permite descargar el codigo fuente a un archivo
curl http://arxiv.org/list/cs/new > a.txt 
#Grep imprime solo las lineas que contienen los titulos
grep "Title" a.txt > b.txt
#De nuevo grep imprime las lineas que contienen la palabra clave en el parametro1
grep "$1" b.txt> a.txt
#Sed permite cortar los codigos html que contiene la pagina y dejar solo los titulos
sed 's/<span class="descriptor">Title:<\/span>/-/g' a.txt >b.txt
#wc imprime con la opcion -l imprime las lineas que contiene el archivo en el que se almacenaron los titulos
wc -l b.txt > a.txt
#Clear limpia la pantalla y permite observar mejor la salida
clear
#Salida del archivo,echo imprime las salidas en pantalla,  figlet configura un estilo de impresion al texto
echo "arxiv.org" | figlet

echo "===================================="
echo "http://arxiv.org/list/cs/new"
echo "===================================="
echo "keyword: $1"
echo "===================================="
echo "Articulos Encontrados:"
#Sed para limpiar la salida del archivo con el numero de lineas
sed 's/b.txt//g' a.txt
#CAt para imprimir el archivo con los titulos de los articulos
cat b.txt
echo "===================================="

#rm para borrar archivos 
rm a.txt
rm b.txt






