#!/bin/bash

n=$1

for (( i=1;i<=n;i++ ))
do
	ans=$((2 ** $i))
	echo "2^$i=$ans"
done
