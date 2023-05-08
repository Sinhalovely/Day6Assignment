read -p"Enter a number: " n
power=1
i=0

while [ $i -le $n ]
do
    echo "2^$i = $power"
    power=$((power * 2))
    i=$((i + 1))
done
#read -p"Enter number whose table you want to print: " n
#m=$1
#echo "$m"
