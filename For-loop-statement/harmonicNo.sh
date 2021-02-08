#!/bin/bash -x

n=$1
H=0

for (( i=1;i<=$n;i++ ))
do
	H=$(( $H+(1/$i) ))
	echo $H
done


