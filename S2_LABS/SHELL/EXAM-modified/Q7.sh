if [ $# -ne 1 ]
then
	echo "Syntax is $0 filename"
	exit 1
fi
term=`tty`
exec<$1
while read line
do
	l=` expr $l + 1`
	set $line >/dev/null
	words=` expr $words + $#`
done
echo "No of lines : $l"
echo "No of words : $words"
exec<$term
