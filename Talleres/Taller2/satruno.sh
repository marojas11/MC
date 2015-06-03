sed -E 's/^\s//g' orbital.csv > 1.csv
sed -E 's/\,([0-9])/\1/g' 1.csv> orbital.csv 
sed -E 's/\s+([0-9])/,\1/g' orbital.csv >1.csv

sed -E 's/([0-9])[R]/-\1/g' 1.csv> orbital.csv

gnuplot <<EOF

plot 1.csv

EOF