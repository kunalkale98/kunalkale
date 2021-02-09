#!/bin/bash -x

echo "Enter a number between 1 to 100:"

read a

#k=30
#i=0
number=$(((RANDOM%100)+1))
echo "The number to be guessed is $guess"

while [ $number -ne $a ]
do
	if [ $number -gt $a ]
		then
			number=$(($number/2))
	elif [ $number -lt $a ]
		then
			new=$(($number/2))
			number=$(($number+$new))
	fi
	((i++))
done

if [ $number -eq $a ]
      then
         echo "The number is $number"
fi



