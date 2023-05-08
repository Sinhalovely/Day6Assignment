head_ct=0
tail_ct=0
while [ $head_ct -lt 11 ] && [ $tail_ct -lt 11 ]
do
 number=$((Random%2))
 if [ $number -eq 0 ]
  then
    ((head_ct++))
 else
    ((tail_ct++))
 fi
 echo "Head:$number Head_ct:$head_ct  Tail:$number Tail_ct:$tail_ct"
done

if [ $head_ct -eq 11 ]
then
  echo "Head won 11times"
else
  echo "Tail won 11times"
fi

