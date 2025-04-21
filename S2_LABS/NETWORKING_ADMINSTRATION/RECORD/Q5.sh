#!/bin/bash
clear
read -p "Enter the sides of the triangle : " a b c
if [[ $a -eq $b && $b -eq $c ]]
then
	echo "The triangle is Equilateral "
elif [[ $a -eq $b || $a -eq $c || $b -eq $c ]]
then
	echo "The triangle is Isosceles "
else
	echo "The triangle is Scalene "
fi
