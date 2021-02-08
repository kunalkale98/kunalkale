#!/bin/bash/ -x

year=$1
check=$(($year%4))
if [ $check -eq 0 ]
	then
		echo "Is a Leap Year";
else
	echo "Is not a Leap Year";
fi

