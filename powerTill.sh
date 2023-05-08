read -p"enter a number; " 

power=1

while [ $power -le 256 ]
do
  echo $power
  power=$((power*2))
done
