read -p "Enter the 3 sides of the Triangle : " a b c
if (( $a + $b <= $c || $b + $c<=$a || $c + $a <=$b ))
then 
	echo "Triangle cannot be formed"
else
	echo "Triangle can be formed"
fi
