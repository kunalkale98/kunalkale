#!/bin/bash -x

counter=0
num=1
while [ $num -lt 100 ]
do
	n=$num
	while [ $n -ne 0  ]
	do
		temp1=$(($n%10))
		n=$(($n/10))
		temp2=$(($n%10))
		n=$(($n/10))
	done
	if [ $temp1 -eq $temp2 ]
		then
			arr[((counter++))]=$num
	fi
	((num++))
done

echo ${arr[*]}
