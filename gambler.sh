acct=100
ct_m=0
bet_ct=0
win_act=0
while [ $acct -gt 0 ] && [ $ct_m -lt 200 ]
do
   ((bet_ct++))
   number=$((RANDOM % 2))
   if [ $number -eq 0 ]
    then
       ((acct--))
   else
       ((acct++))
       ct_m=$((ct_m+1))
       ((win_act++))
   fi
done
echo "Account balance:$acct  Increased_bl:$ct_m"
if [ $ct_m -eq 200 ]
then
  echo "You win the game after betting $bet_ct times and $win_act"
else
  echo "You losse the game"
fi
