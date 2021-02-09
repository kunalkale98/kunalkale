#!/bin/bash -x

Heads=0
Tails=0

while [ $Heads -ne 11 -a $Tails -ne 11 ]
do
	if [ $((RANDOM%2)) -eq 0 ]
		then
			((Heads++))
	else
		((Tails++))
	fi
done

if [ $Heads -eq 11 ]
	then
		echo "Heads won"
else
	echo "Tails won"
fi
