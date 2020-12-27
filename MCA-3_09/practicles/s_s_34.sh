#calculate the percentage and marks of 5 subjects 
#shell script : 34 

echo "Enter the five subject marks for the student"
read m1 m2 m3 m4 m5
sum1=`expr $m1 + $m2 + $m3 + $m4 + $m5`
echo "Sum of 5 subjects are: " $sum1
per=`expr $sum1 / 5`
echo "The percentage of the marks of five subject is : " $per

if [ $per -ge 80 ] 
then 
	echo " you got Grade : A " 
elif [ $per -ge 70 ] 
then 
	echo " You got Grade : B " 
elif [ $per -ge 60 ] 
then 
	echo " You got grade : C " 
elif [ $per -ge 50 ]
then 
	echo "You got Grade : D " 
else
	echo "FAIL :" 
fi 


#output 

#neel@NeelRana:/mnt/e/ROLWALA/sem-3/o.s/practicles$ sh s_s_34.sh
#Enter the five subject marks for the student
#50 80 70 90 60
#Sum of 5 subjects are:  350
#The percentage of the marks of five subject is :  70
# You got Grade : B
# neel@NeelRana:/mnt/e/ROLWALA/sem-3/o.s/practicles$
