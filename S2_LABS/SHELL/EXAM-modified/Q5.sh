if [ $# -gt 1 ]
then
	echo "Syntax is $0 Fiename or $0"
	exit 1
else
	if [ $# -ne $0 ]
	then
		cd $1
	fi
	for i in *
	do
	if [ -f $i ]
	then
	
		mv $i $i.$$
		echo "$i renamed to $i.$$"
	fi
	done
fi
