read -p"Enter a number: " n
sum=0
for (( i=1; i<=n; i++ ))
do
 fraction=$(awk "BEGIN {printf \"%.2f\", 1/$i}")
 echo "$fraction"
 sum=$(awk "BEGIN {printf \"%.2f\", $sum+$fraction}")
done

echo "the $nth harmonic number is $sum"
