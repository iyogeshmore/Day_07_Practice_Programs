for((i=0; i<10; i++))
do
      random=$((RANDOM%1000))
      random_num[$i]=$random
done
      echo "array is:" ${random_num[@]}

min=${random_num[0]}
max=${random_num[0]}
sec_min='unset'
sec_max='unset'

for i in "${random_num[@]}"
do
      if(($i < $min))
      then
          sec_min=$min
          min=$i
      fi

      if(($i > $max))
      then
          sec_max=$max
          max=$i
      fi
done

echo "Second smallest is " $sec_min
echo "Second lagest is " $sec_max

