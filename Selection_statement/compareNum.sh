#!/bin/bash -x

var1=$((RANDOM%10))
var2=$((RANDOM%10))
if [$var1 -gt $var2]
	then
		echo $var1 is greater than $var2
	else
		echo $var2 is greater than $var1
fi
