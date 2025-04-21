#!/bin/bash
clear
read -p "Enter the value : " m
i=1
echo "Multiplication table of $m :"
while [ $i -le 10 ]
do
	echo " $i * $m = $(( i * m))"
	(( i++ ))
done

