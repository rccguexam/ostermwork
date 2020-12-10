#1. Basic salary of a person is input through the keyboard. His dearness allowance is 40% of basic
#salary and house rent is 20% of basic salary. Write a program to calculate the gross pay.

read -p "Enter Your Salary : " salary
allowance=`echo "$salary*40/100"|bc`
houserent=`echo "$salary*20/100"|bc`
gross=`echo "$salary-$houserent+$allowance"|bc`
echo "Dearness Allowance : "$allowance
echo "House Rent : "$houserent
echo "Gross Salaray : "$gross

#Output : 
#Enter Your Salary : 5000
#Dearness Allowance : 2000
#House Rent : 1000
#Gross Salaray : 6000
