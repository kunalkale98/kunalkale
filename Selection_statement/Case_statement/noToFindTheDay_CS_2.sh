#!/bin/bash -x

day=$1

case $day in
	1)
		echo "Sunday"
			;;
	2)
		echo "Monday"
			;;
	3)
		echo "Tuesday"
			;;
	4)
		echo "Wednesday"
			;;
	5)
		echo "Thursday"
			;;
	6)
		echo "Friday"
			;;
	7)
		echo "Saturday"
			;;
	*)
		echo "Enter a number between 1 to 7 to display the day"
			;;
esac
