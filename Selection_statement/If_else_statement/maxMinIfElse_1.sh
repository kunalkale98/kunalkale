#!/bin/bash

num1=$(((RANDOM%900)+100));
num2=$(((RANDOM%900)+100));
num3=$(((RANDOM%900)+100));
num4=$(((RANDOM%900)+100));
num5=$(((RANDOM%900)+100));

arr=($num1 $num2 $num3 $num4 $num5)
len=${#arr[@]}
echo ${arr[@]}
min=${arr[0]}
max=${arr[4]}
for((i=0;i<len;i++))
	do
		if [ ${arr[$i]} -lt $min ];
			then
				min=${arr[$i]}
		elif [ ${arr[$i]} -gt $max ];
			then
				max=${arr[$i]}
		fi
	done

echo $min
echo $max

