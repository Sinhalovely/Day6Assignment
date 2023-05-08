read -p"Enter the temperarure: " temp
read -p"select the conversion type 1(C to F) or 2(F to C): " Con_t

case $con_t in
  1)
   if [ $temp -lt 0 ] || [ $temp -gt 100 ]
    then
      echo "Please enter the value between 0'C to 100'C"
   else
      frenht_v=$(awk "BEGIN {printf \"%2.f\",($temp*9/5)+32}")
      echo "$temp is equal to $frenht_v"
   fi
   ;;
  2)
   if [ $temp -lt 32 ] || [ $temp -gt 212 ]
    then
      echo "Please enter the value between 32'F to 212'F"
   else
      celsius_v=$(awk "BEGIN {printf \"%2.f\",($temp-32)*5/9}")
      echo "$temp is equal to $celsius_v"
   fi
   ;;
  *)
   echo "Invalid case type,please select 1 or 2."
   ;;
esac


