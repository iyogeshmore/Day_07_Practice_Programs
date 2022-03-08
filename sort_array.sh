arr=()

for (( i=0; i<10; i++ ))
do
	a=$(( RANDOM % 1000 ))
	arr[((i))]+=$a
done

	echo "array is ${arr[@]} "

arr=(`echo ${arr[@]} | tr " " "\n" | sort `)

	echo ${arr[@]}

echo "Second smallest is ${arr[1]}"
echo "Second largest is ${arr[-2]}"
