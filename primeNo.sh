read -p "Enter a number: " n

if [ $n -eq 2 ]
then
  echo "$n is a prime number"
else
  for ((i=2; i<=$n/2; i++))
  do
    if [ $n%$i -eq 0 ]
    then
      echo "$n is not a prime number"
      break
    fi
  done

  if [ $i -eq $((n/2+1)) ]
  then
    echo "$n is a prime number"
  fi
fi

