echo "Enter Number : "
read no
num=$no
fact=1

while [ $no -gt 1 ]
do
	fact=`expr $fact \* $no`
	no=$(($no - 1))
	#echo "$no+1! is $fact.."
done
echo "Factorial = $fact"

#output

#Rutwik@DESKTOP-A0UDC7F:~$ sh a18.sh
#Enter Number :
#5
#Factorial = 120
