export IFS=,
touch env.txt
while read f1 f2 f3 f4 f5 f6 f7 f8
do
       echo $f1-$f3-$f6 >> env.txt
done < environments.csv
