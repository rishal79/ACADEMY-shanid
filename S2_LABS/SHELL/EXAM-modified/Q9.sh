if [ $# -ne 1 || -d $1 ]
then
	echo "Syntax is $0 filename"
	exit 1
fi
cp $1 file
term=`tty`
exec<$1
lines=`cat $file | wc -l`
while [ $lines -ge 1 ]
do
	tail -n 1 file 
	lines=` expr $lines - 1`
	head -n  $lines file > temp
	mv temp file
done
exec<$term
