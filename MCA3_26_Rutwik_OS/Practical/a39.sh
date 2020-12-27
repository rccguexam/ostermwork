echo -n "Enter first number : "
read num1
echo -n "Enter second number : "
read num2

max=$num1
den=$num2

if [ $num2 -gt $max ]
then
	max=$num2
	den=$num1
fi

	rem=$((max % den))

while [ $rem -ne 0 ]
do
	max=$den
	den=$rem
	rem=$((max % den))
	max=$((max - 1))
done

	gcd=$den
	lcm=`expr $num1 \* $num2 / $gcd`

echo "HCF of $num1 and $num2 = $gcd"
echo "LCM of $num1 and $num2 = $lcm"

#output
#Enter first number : 15
#Enter second number : 55
#HCF of 15 and 55 = 5
#LCM of 15 and 55 = 165
