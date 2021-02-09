#!/bin/bash -x

read -p 'Enter a number to check prime and palindrome:' num

function isPrime() {
	local n=$1
	for (( i=2;i<=$n/2;i++))
	do
   	check=$(($n%$i))
   	if [ $check -eq 0 ]
      	then
				op=1
         	echo $op
		else
			op=0
			echo $op
		fi
		break
	done
}

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

prime=$( isPrime $num )
if [ $prime -eq 1 ]
	then
		echo "Not a prime number"
else
	echo "Is a prime number"
fi


outputNo=$( palindrome $num )
if [ $outputNo -eq $num ]
   then
      echo "Number is palindrome"
		reversedNo=$( isPrime $outputNo )
		if [ $prime -eq 1 ]
   	then
     		echo "Palindrome number is not a prime number"
		else
   		echo "Palindrome number is a prime number"
		fi
else
	echo "Number is not a palindrome number"
fi
