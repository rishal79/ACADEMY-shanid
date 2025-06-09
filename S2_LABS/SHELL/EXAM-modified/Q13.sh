clear
read -p "Enter the lower limit and Upper limit : " a b
echo -n "Even numbers : "
while [ $a -le $b ]
do
	if (( $a % 2 == 0 ))
	then
		echo -n " $a "
	fi
	(( a++ ))
done
