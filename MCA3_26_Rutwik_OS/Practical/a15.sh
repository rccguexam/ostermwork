time=`date '+%H'`
echo "$time"

if [ $time -ge 6 -a $time -lt 12 ]
then
	echo "Good Morning.."
elif [ $time -ge 12 -a $time -lt 16 ]
then
	echo "Good Afternoon.."
elif [ $time -ge 16 -a $time -lt 20 ]
then 
	echo "Good Evening.."	
else
	echo "Good Night.."
fi

#output
#Rutwik@DESKTOP-A0UDC7F:~$ sh a15.sh
#16
#Good Evening..
