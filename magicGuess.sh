

echo "Think of a number between 1 and 100"
read -p "Press Enter when ready"

min=1
max=100
guess=0
magic_number_found=false


while [ $magic_number_found = false ]
do
  mid=$(( (max+min)/2 ))
  
  read -p "Is your number less than $mid? (y/n)" answer
  
  
  if [ $answer = "y" ]
  then
    max=$((mid-1))
  else
    min=$((mid+1))
  fi

  if [ $min -eq $max ]
  then
    guess=$min
    magic_number_found=true
  fi
done

echo "The magic number is $guess"
