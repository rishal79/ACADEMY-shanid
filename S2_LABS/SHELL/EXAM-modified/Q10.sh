if [ $# -ne 2 ]
then
	echo "Syntax is $0 String Filename"
	exit 1
fi
term=`tty`
exec<$2
while read line
do
	echo $line | grep -w $1>/dev/null
	if [ $? -ne 0 ]
	then
		echo $line >> temp
	fi
done
mv temp removed.txt
exec<$term
