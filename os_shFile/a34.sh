echo "Enter Marks for subject 1 : "
read s1
echo "Enter Marks for Subject 2 : "
read s2
echo "Enter Marks for Subject 3 : "
read s3
echo "Enter Marks for Subject 4 : "
read s4
echo "Enter Marks for Subject 5 : "
read s5

total=`expr $s1 + $s2 + $s3 + $s4 + $s5`
echo "Total = $total"

per=$(($total * 100 / 500 ))
echo "Percentage = $per"

if [ $per -gt 80 ]
then 
	echo "Grade is A.."
elif [ $per -lt 80 -a $per -gt 60 ]
then
	echo "Grade is B.."
elif [ $per -lt 60 -a $per -gt 40 ]
then 
	echo "Grade is c.."
else
	echo "Fail.."
fi

#output

#Enter Marks for subject 1 :
#80
#Enter Marks for Subject 2 :
#89
#Enter Marks for Subject 3 :
#87
#Enter Marks for Subject 4 :
#78
#Enter Marks for Subject 5 :
#80
#Total = 414
#Percentage = 82
#Grade is A.
