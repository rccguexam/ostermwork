echo "Enter Salary : "
read salary

announces=$(($salary * 40  / 100))
echo "Announces is : " $announces
rent=$(($salary * 20 / 100))
echo "Rent is : " $rent
gross_pay=`expr $salary + $announces + $rent`
echo "Gross Pay Salary  = " $gross_pay

#output 

#echo "Enter Salary : "
#read salary

#announces=$(($salary * 40  / 100))
#echo "Announces is : " $announces
#rent=$(($salary * 20 / 100))
#echo "Rent is : " $rent
#gross_pay=`expr $salary + $announces + $rent`
#echo "Gross Pay Salary  = " $gross_pay

