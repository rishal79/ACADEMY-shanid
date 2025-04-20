#!/bin/bash
clear
read -p "Enter the year : " l
if (( $l % 400 == 0 ))
then
	echo "$l is a leapyear "
elif (( $l % 4 == 0 && $l % 100 !=0 ))
then
	echo "$l is a leapyear"
else
	echo "$l is not a leapyear"
fi
