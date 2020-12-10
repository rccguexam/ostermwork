#8. Check whether the entered no. is odd or even.

read -p "Enter The Number : " num
check=$((num%2))

if [ $check -eq 0 ]
then
        echo "EVEN"
else
        echo "ODD"
fi

# Output :
# Enter The Number : 15
# ODD

# Enter The Number : 8
# EVEN

