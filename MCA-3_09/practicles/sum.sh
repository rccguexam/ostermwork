# Sum of all the digit of the number 
echo "Enter a five digit number : "
read num
number=$num
sum=0
while [ "$num" -gt 0 ]
do
	        r=$(($num % 10))
		sum=`expr $sum + $r`
		num=`expr $num / 10`
done
echo " The sum of " $number " is : " $sum
