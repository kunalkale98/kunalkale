#!/bin/bash -x

num=$1
n=1
while [ $((2**$n)) -le 256 -a $n -ne $(($num+1)) ]
do
	ans=$(( 2**$n ))
	echo $ans
	((n++))
done
