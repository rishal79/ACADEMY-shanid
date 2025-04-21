   Write a shell script to generate a multiplication table pattern using a user-defined function.  


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

Algorithm:
Step 1: Ask the user to enter a value and store it in variable m.

Step 2: Initialize a variable i to 1.

Step 3: Print the message "Multiplication table of $m".

Step 4: Use a while loop to iterate from 1 to 10.

Step 5: In each iteration, print the multiplication result of i and m.

Step 6: Increment i by 1 after each iteration.

