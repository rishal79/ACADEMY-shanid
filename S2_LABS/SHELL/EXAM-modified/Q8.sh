h=$(date +"%H")
if [ $h -ge 6 ] && [ $h -lt 12 ]
then 
	echo "Good Morning !"
elif [ $h -lt 18 ]
then
	echo "Good Afternoon !"
elif [ $h -lt 21 ]
then
	echo "Good Evening !"
else
	echo "Good Night !"
fi
