# 10. Check whether the entered year is a leap year or not.

read -p "Enter The Year : " year
if test `expr $year % 400` -eq 0
then
	echo "Its Leap Year"
elif test `expr $year % 100` -eq 0
then
	echo "Its Not A Leap Year"	
elif test `expr $year % 4` -eq  0
then
	echo "Its Leap Year"
else 
	echo "Its Not A Leap Year"
fi

# Output :
# Enter The Year : 2020
# Its  A Leap Year
