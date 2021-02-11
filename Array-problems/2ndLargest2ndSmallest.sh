#!/bin/bash -x

n=0
max_iteration=10

while [ $n -lt $max_iteration ]
do
	num=$(((RANDOM%900)+100))
	arr[((n++))]="$num"
done

echo ${arr[*]}

for ((i=0;i<n;i++))
do
	for ((j=i+1;j<n;j++))
	do
		if [ ${arr[i]} -gt ${arr[j]} ]
			then
				temp=${arr[i]}
				arr[(($i))]=${arr[j]}
				arr[(($j))]=$temp
		fi
	done
done

echo "${arr[n-2]} is the second largest element"
echo "${arr[1]} is the second smallest element"
