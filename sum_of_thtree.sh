n=5
arr=( 1 2 3 4 5 )
add=0

for (( i = 0; i < $n-2; i++ ))
do
        for (( j = $i+1; j < $n-1; j++ ))
        do
            for (( k= $j + 1; k < $n; k++ ))
            do
                  add=$(( $(( ${arr[i]} + ${arr[j]} )) + ${arr[k]} ))
                  if (( $add == 0 ))
                  then
                       echo "Elements:" ${arr[i]},${arr[j]},${arr[k]}
                       echo "Sum of three array elements:" $add
                   fi
             done
       done
done
