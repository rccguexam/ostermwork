echo "Enter Number : "
read no

flag=1
i=2

while [ $i -lt $no ]
do
	rem=`expr $no % $i`
	#echo "$rem is..."
	if [ $rem -eq  0 ]
	then
		flag=0
		break
	fi
	i=`expr $i + 1`	
done

if [ $flag -eq 1 ]
then 
	echo "$no is prime Number."
else
	echo "$no is not prime Number."
fi

#output
#preksha@DESKTOP-A0UDC7F:~$ sh a9.sh
#Enter Number :
#6
#6 is not prime Number.

