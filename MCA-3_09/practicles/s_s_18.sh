#shell scr:wqipt for factorial of a number
#factorial using while loop

echo "Enter a number"
read num
number=$num 
fact=1

while [ $num -gt 1 ]
do
	  fact=`expr $fact \* $num`  #fact = fact * num
	  num=`expr $num - 1`       #num = num - 1
done
echo "FActorial of the number " $number " is " $fact


#Output:

#neel@NeelRana:/mnt/e/ROLWALA/sem-3/o.s/practicles$ sh s_s_18.sh
#Enter a number
#5
#FActorial of the number  5  is  120
#neel@NeelRana:/mnt/e/ROLWALA/sem-3/o.s/practicles$
