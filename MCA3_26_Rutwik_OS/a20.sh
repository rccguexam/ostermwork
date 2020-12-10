echo "Enter Power : "
read pow
echo "Enter Exponent : "
read exp

i=0
ans=1

while [ $i -lt $pow ]
do
	        ans=`expr $ans \* $exp`
		i=`expr $i + 1`
done


echo "$exp ^ $pow = $ans"

#output

#Rutwik@DESKTOP-A0UDC7F:~$ sh a20.sh
#Enter Power :
#5
#Enter Exponent :
#2
#2 ^ 5 = 32
