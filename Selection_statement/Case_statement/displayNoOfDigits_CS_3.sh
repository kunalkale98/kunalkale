#!/bin/bash -x

no=$1

case $no in
	1)
		echo "Unit"
			;;
	10)
		echo "Ten"
			;;
	100)
		echo "Hundred"
			;;
	1000)
		echo "Thousand"
			;;
	10000)
		echo "Ten Thousand"
			;;
	100000)
		echo	"Lakh"
			;;
	1000000)
		echo "Million"
			;;
	*)
		echo "Enter a no from the following 1,10,100,1000,..."
			;;
esac

