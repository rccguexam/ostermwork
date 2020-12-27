#20  Two numbers are entered through the keyboard, find the power, one number raised to another.

read -p "Enter base and exponent seperated by space: " base exponent
echo "$base^$exponent" | bc

# Output:

# niravchavda@niravchavda:~/Desktop/Learning/shell$ sh 20.sh 
# Enter base and exponent seperated by space: 2 5
# 32