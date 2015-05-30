#Tarea 1_ Punto 1

curl http://arxiv.org/list/cs/new > a.txt 
grep "Title" a.txt > b.txt
grep "$1" b.txt> a.txt
sed 's/<span class="descriptor">Title:<\/span>/-/g' a.txt >b.txt
wc -l b.txt > a.txt

clear

echo "arxiv.org" | figlet

echo "===================================="
echo "http://arxiv.org/list/cs/new"
echo "===================================="
echo "keyword: $1"
echo "===================================="
echo "Articulos Encontrados:"
sed 's/b.txt//g' a.txt
cat b.txt
echo "===================================="
rm a.txt
rm b.txt






