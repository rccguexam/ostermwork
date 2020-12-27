echo "Enter Salary : "
read salary

da=$(($salary * 40  / 100))
h_r=$(($salary * 20 / 100))
gross_pay=`expr $salary + $da + $h_r`
echo "Gross Pay Salary  = " $gross_pay

#output
#Rutwik@DESKTOP-A0UDC7F:~$ sh a1.sh
#Enter Salary :
#10000
#Gross Pay Salary  =  16000
