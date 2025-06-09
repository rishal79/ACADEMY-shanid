if [ $# -ne 1 ]
then
	echo "Syntax is $0 <value>"
fi
n=( $1 /2 )
for (( i=2;i<n;i++))
do
	if (( $1 % i == 0 ))
	then
		echo "$1 is not a  prime number "
		exit 1
	fi
done
echo "$1 is prime number"
