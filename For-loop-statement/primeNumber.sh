#!/bin/bash -x

n=$1


for (( i=2;i<=$n/2;i++))
do
	check=$(($n%$i))
	if [ $check -eq 0 ]
		then
			echo "$n is not prime"
			exit 0
	fi
done

echo "$n is prime"
