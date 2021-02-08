#!/bin/bash -x

a=$1
b=$2
c=$3

first=$(( $a+$b*$c ))
second=$(( $a%$b+$c ))
third=$(( $c+$a/$b ))
fourth=$(( $a*$b+$c ))

echo $first $second $third $fourth

if [ $first -gt $second -a $first -gt $third -a $first -gt $fourth ]
	then
		echo "$first is maximum"
elif [ $second -gt $third -a $second -gt $fourth ]
	then
		echo "$second is maximum"
elif [ $third -gt $fourth ]
	then
		echo "$third is maximum"
else
	echo "$fourth is maximum"
fi

if [ $first -lt $second -a $first -lt $third -a $first -lt $fourth ]
   then
      echo "$first is minimum"
elif [ $second -lt $third -a $second -lt $fourth ]
   then
      echo "$second is minimum"
elif [ $third -lt $fourth ]
   then
      echo "$third is minimum"
else
   echo "$fourth is minimum"
fi

