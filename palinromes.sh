function palindrome(){

 local n=$1
 local sum=0
 while [ $n -gt 0 ]
 do
   sum=$((sum*10+n%10))
   n=$((n/10))
 done
 echo $sum
}

read -p"Enter first number: " n1
read -p"Enter second number: " n2
 rev=$(palindrome $n1)
 rev2=$(palindrome $n2)

 if [ $rev -eq $n2 ] && [ $rev2 -eq $n1 ]
  then
    echo "Both are palindrome number"
 else
    echo "Both are not a palindrome"
 fi



