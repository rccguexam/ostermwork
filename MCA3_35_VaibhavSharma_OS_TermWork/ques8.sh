
# 8. Check whether the entered no. is odd or even.

read -p "Enter The Number : " num
check=$(echo $num%2 | bc)
if [ $check -eq 0 ]
then
        echo "EVEN"
els
        echo "ODD"
fi

# Output :
# Enter The Number : 22
# EVEN

# Enter The Number : 33
# ODD

