if [ $# -ne 2 ]
then 
	echo "Syntax is $0 filename1 filename2"
	exit 1
fi
if [ -f $1 -a -f $2 ]
then
	cmp $1 $2>/dev/null
	if [ $? -eq 0 ]
		then 
			rm -f $2
			echo "files are identical $2 removed"
	else
		echo "Files are different"
	fi
else
	echo "Files are not Ordinary Files"
fi
