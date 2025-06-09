if  [ $# -ne 3 ]
then 
	echo "Syntax is $0 <side1><side2><side3>"
	exit 1
fi
if [[ $1 -eq $2 && $2 -eq $3 ]] 
then
	echo "Equilateral Triangle "
elif [ $1 -eq $2 ] || [ $2 -eq $3 ] || [ $3 -eq $1 ]
then
	echo "Isosceles Traingle"
else
	echo "Scalene Triangle"
fi
