#38. Find the largest and smallest of 3 different numbers.

read -p "Enter First Number : " a
read -p "Enter Second Number : " b
read -p "Enter Third Number : " c
largest=$a
smallest=$a
if [ $b -gt $largest ]
then
        largest=$b
        if [ $c -gt $largest ]
        then
                largest=$c
        fi
fi

if [ $b -lt $smallest ]
then
        smallest=$b
        if [ $c -lt $smallest ]
        then
                smallest=$c
        fi
fi
echo "Largest : " $largest "Smallest : " $smallest

# Output:
# niravchavda@niravchavda:~/Desktop/Learning/shell$ sh 38.sh 
# Enter First Number : 5
# Enter Second Number : 0
# Enter Third Number : -9
# Largest :  5 Smallest :  -9