echo "Enter number :"
read num

n1=0
n2=1
i=2

echo "Fibonacci Series : "
echo "$n1\n$n2"

while [ $i -lt $num ]
do 
	i=`expr $i + 1`
	n3=`expr $n1 + $n2`
	echo $n3
	n1=$n2
	n2=$n3
done

#output
#Rutwik@DESKTOP-A0UDC7F:~$ sh a19.sh
#Enter number :
#5
#Fibonacci Series :
#0
#1
#1
#2
#3
