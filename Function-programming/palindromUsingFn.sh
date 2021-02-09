#!/bin/bash -x

#echoEnter a number to check its palindrome or not:"
#num=$1
read -p 'Enter a number to check palindrome or not:' num

function palindrome() {
	local num=$1
	new_num=0
	while [ $num -ne 0 ]
	do
		n=$(($num%10))
		new_num=$((($new_num*10)+$n))
		num=$(($num/10))
	done
	echo $new_num
}

outputNo=$( palindrome $num )
if [ $outputNo -eq $num ]
	then
		echo "Number is palindrome"
else
	echo "Number is not palindrome"
fi

