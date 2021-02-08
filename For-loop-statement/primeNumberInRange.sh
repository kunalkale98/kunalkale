#!/bin/bash

num1=$1
num2=$2
num3=$3
num4=$4
num5=$5

range=($num1 $num2 $num3 $num4 $num5)
len=${#range[@]}

for (( j=0;j<$len;j++ ))
do
	n=$(( ${range[$j]}/2 ))
	flag=0

	for (( i=2;i<=$n;i++ ))
	do
		check=$(( $n%$i ))
   	if [ $check -eq 0 ]
      	then
				flag=1
		fi
		break
	done



	if [ $flag -eq 1 ]
		then
				echo "${range[$j]} is not Prime"
	else
		echo "${range[$j]} is Prime"
	fi
done

