#!/bin/bash -x

no=$1

if [ $no -eq 1 ]
	then
		echo "Unit"
elif [ $no -eq 10 ]
	then
		echo "Ten"
elif [ $no -eq 100 ]
	then
		echo "Hundred"
elif [ $no -eq 1000 ]
	then
		echo "Thousand"
elif [ $no -eq 10000 ]
   then
      echo "Ten Thousand"
elif [ $no -eq 100000 ]
   then
      echo "Lakh"
elif [ $no -eq 1000000 ]
   then
      echo "Million"

else
	echo "Enter one of the following number 1,10,100,1000,.."
fi

