#10. Check whether the entered year is a leap year or not.

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

#Output :

# Enter The Year : 2000
# Its Leap Year

# Enter The Year : 1999
# Its Not A Leap Year

# Enter The Year : 1900
# Its Not A Leap Year

# Enter The Year : 1996
# Its Leap Year
