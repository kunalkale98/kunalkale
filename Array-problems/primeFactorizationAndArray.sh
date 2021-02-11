#!/bin/bash -x

read -p "Enter a number to find its Prime factorization:" num

counter=0

while [ $(($num%2)) -eq 0 ]
do
	echo "2"
	num=$(($num/2))
	arr[((counter++))]="2"
done

for ((i=3;i<=$num;i+=2))
do
	while [ $(($num%$i)) -eq 0 ]
	do
		echo $i
		arr[((counter++))]=$i
		num=$(($num/$i))
	done
done

if [ $num -gt 2 ]
	then
		echo $num
		arr[((counter++))]=$num
fi

echo ${arr[*]}
