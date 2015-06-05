cd 
cd c-examples/src

rm c31_goto.c cA5_thread_join.c c83_terminal_io.c
rm *.out
ls -1 > ls.txt


for file in $(head -30 ls.txt)
do 
gcc -o $file.out $file 
grep -A 1 'Example' $file
./$file.out
read -p "Press any key to continue... " -n1 -s


done