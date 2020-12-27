# 38. Find the largest and smallest of 3 different numbers.

read -p "Enter First Number : " num1
read -p "Enter Second Number : " num2
read -p "Enter Third Number : " num3
large=$num1
small=$num1
if [ $num2 -gt $large ]
then
        large=$num2
        if [ $num3 -gt $large ]
        then
                large=$num3
        fi
fi

if [ $num2 -lt $small ]
then
        small=$num2
        if [ $num3 -lt $small ]
        then
                small=$num3
        fi
fi
echo "Largest : " $large "Smallest : " $small

# Output:
# Enter First Number : 15
# Enter Second Number : 10
# Enter Third Number : 11
# Largest :  15 Smallest :  10