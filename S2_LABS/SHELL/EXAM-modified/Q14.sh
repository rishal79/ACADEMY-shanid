clear
read -p "Enter the Number : " a
i=1
while [ $i -le 10 ]
do
	echo "$i * $a = $(( i * a ))"
	((i ++))
done
