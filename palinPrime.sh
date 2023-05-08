
function is_prime() {
  local num=$1
  if [ $num -le 1 ]; then
    echo "false"
    return
  fi
  for ((i=2; i<=$num/2; i++)); do
    if [ $((num%i)) -eq 0 ]; then
      echo "false"
      return
    fi
  done
  echo "true"
}

function get_palindrome() {
  local num=$1
  local rev=0
  while [[ $num -ne 0 ]]; do
    rev=$((rev*10+num%10))
    num=$((num/10))
  done
  echo $rev
}


read -p "Enter a number: " num

if [[ $(is_prime $num) == "true" ]]; then
  echo "$num is a prime number."
  pal=$(get_palindrome $num)
  if [[ $(is_prime $pal) == "true" ]]; then
    echo "The palindrome of $num is $pal, which is also a prime number."
  else
    echo "The palindrome of $num is $pal, which is not a prime number."
  fi
else
  echo "$num is not a prime number."
fi
