#!/bin/bash -x

goal=200
broke=0

bets=0
wins=0
cash=100

while [ $cash -gt $broke -a $cash -lt $goal ]
do
	((bets++))
	if [ $((RANDOM%2)) -eq 1 ]
		then
			((cash++))
			((wins++))
	else
		((cash--))
	fi
done

if [ $cash -eq $goal ]
	then
		echo "Gambler won"
else
	echo "Gambler lost"
fi

echo "Wins=$wins"
echo "Bets=$bets"
