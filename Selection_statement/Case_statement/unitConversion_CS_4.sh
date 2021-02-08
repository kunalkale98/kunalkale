#!/bin/bash -x

no=$1
length=$2
feettoinch=1;
feettometer=2;
inchtofeet=3;
metertofeet=4;

case $length in
	$feettoinch)
		inch=$(($no*12))
		echo $inch
			;;
	$feettometer)
		meter=$(($no/3))
		echo $meter
			;;
	$inchtofeet)
		feet=$(($no/12))
		echo $feet
			;;
	$metertofeet)
		feet=$(($no*3))
		echo $feet
			;;
	*)
		echo "Can't Convert"
			;;
esac
