#!/bin/bash
clear
read -p "Enter the value : " p
if [ $p -eq 1 ]
then
	echo "$p is not prime or composite "
else
	for (( i=2 ;i< p/2;i++ ))
	do
		if (( p % i ==0 ))
		then
			echo "$p is not a prime number "
			exit 0 
		fi
	done
	echo "$p is a prime number "
fi
