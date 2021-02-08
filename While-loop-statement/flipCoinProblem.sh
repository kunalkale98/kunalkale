#!/bin/bash -x

coin=$((RANDOM%2))

Heads=0
Tails=0

while [ $Heads -ne 11 || $Tails -ne 11 ]
do
	if [ $coin -eq 0 ]
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
