for i in {0..1000}
do
  a=$((i*i))
  echo $i","$a >> punto2t1.csv
done

awk -F"," '{print $1 + $2 }' punto2t1.csv >>punto3t1.csv