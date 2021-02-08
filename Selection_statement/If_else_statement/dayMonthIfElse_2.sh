#!/bin/bash -x

month=$1
date=$2

if [ $month == "March" ]
	then
		isMonth=3
elif [ $month == "April" ]
	then
		isMonth=4
elif [ $month == "May" ]
	then
		isMonth=5
elif [ $month == "June" ]
	then
		isMonth=6
else
		isMonth=0
fi

if [ $isMonth -gt 3 -a $isMonth -lt 6 ]
	then
		echo "True"
elif [ $isMonth -eq 3 -a $date -ge 20 ]
	then
		echo "True"
elif [ $isMonth -eq 6 -a $date -le 20 ]
	then
		echo "True"
else
	echo "False"
fi
