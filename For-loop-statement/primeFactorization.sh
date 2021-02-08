#!/bin/bash

num=$1

for (( j=2;j<=$num;j++))
do
	for ((i=0;i<=$j;i++))
	do
		if [ $(($num%$j)) -eq 0 ]
			then
				echo $j
				num=$((num/$j))
		fi
	done
done
