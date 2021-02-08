#!/bin/bash -x

n=$1

for ((i=$n-1;i>0;i--))
do
	n=$(( $n*$i ))
done

echo $n
