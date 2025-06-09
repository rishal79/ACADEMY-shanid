fact()
{
	f=1
	i=1
	while [ $i -le $1 ]
	do
		f=$(( f * i ))
		(( i++))
	done
	echo "$f"
}
read -p "Enter the Value : " n
echo "Factorial : $(fact $n ) "
