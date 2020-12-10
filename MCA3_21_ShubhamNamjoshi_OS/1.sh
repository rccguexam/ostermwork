#1. Basic salary of a person is input through the keyboard. His dearness allowance is 40% of basic
#salary and house rent is 20% of basic salary. Write a program to calculate the gross pay.

read -p "Enter Your Salary : " salary
dearance=`echo "$salary*40/100"|bc`
houserent=`echo "$salary*20/100"|bc`
gross=`echo "$salary-$houserent+$dearance"|bc`
echo "Dearness Allowance : "$dearance
echo "House Rent : "$houserent
echo "Gross Salaray : "$gross

#Output : 
#Enter Your Salary : 4500
#Dearness Allowance : 1800
#House Rent : 900
#Gross Salaray : 5400
