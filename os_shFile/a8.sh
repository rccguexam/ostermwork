echo "Enter Number : "
read no

rem=`expr $no % 2`
if [ $rem -eq 0 ] 
then 
	echo "$no is even number.."
else
	echo "$no is odd number.."
fi
#output
#pushti@DESKTOP-A0UDC7F:~$ sh a8.sh
#Enter Number :
#12
#12 is even number..
