# Basic salary of a person is input through the keyboard.
# His dearness allowance is 40% of basic
# salary and house rent is 20% of basic salary.
# Write a program to calculate the gross pay.

echo Enter salary of a person
read basic_salary
echo "Basic Salary: $basic_salary"
da=`echo "scale=2; $basic_salary * 0.4"|bc`
echo "Dearness Allowance: $da" 
houserent=`echo "scale=2; $basic_salary * 0.2"|bc`
echo "House Rent: $houserent"
total_salary=`echo "$basic_salary + $da + $houserent"|bc`
echo "Total Salary: $total_salary"


# Output

# niravchavda@niravchavda:~/Desktop/Learning/shell$ sh 1.sh 
# Enter salary of a person
# 10000
# Basic Salary: 10000
# Dearness Allowance: 4000.0
# House Rent: 2000.0
# Total Salary: 16000.0