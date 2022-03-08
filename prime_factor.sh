read -p "Enter number: " num
prime()
{
   factor=[]
   for(( i=2 ; i<= $num/2 ; i++ ))
   do
         if(( $num%$i == 0  ))
         then
              #echo $i
              factor[i]=$i
         fi
   done
   echo ${factor[@]}
}
prime n
