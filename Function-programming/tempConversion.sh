#!/bin/bash -x

echo "1. degF to degC"
echo "2. degC to degF"

read -p "Select the Conversion type :" select

function degFtodegC() {
	local boil_temp=212
	local freezing_temp=32
	read -p "Enter temperature to convert in Celcius:" degF
	if [ $degF -lt $boil_temp -a $degF -gt $freezing_temp ]
		then
			degC=$((($degF-32)*5/9))
			echo $degC
	else
		echo "Enter a temperature between freezing and boiling point"
	fi
}

function degCtodegF() {
	local boil_temp=100
   local freezing_temp=0
	read -p "Enter temperature to convert in Fahrenheit:" degC
	if [ $degC -lt $boil_temp -a $degC -gt $freezing_temp ]
      then
			degF=$((($degC*(9/5))+32))
			echo $degF
	else
		echo "Enter a temperature between freezing and boiling point"
	fi
}

case $select in
	1)
		conv1=$( degFtodegC )
		echo $conv1
			;;

	2)
		conv2=$( degCtodegF )
		echo $conv2
			;;
	*)
		echo "Select a valid option"
			;;
esac
