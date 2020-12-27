# 4. If a five digit number is entered through the keyboard,
# calculate the sum of its digits.

total=0

echo "Enter a number"
read num

while [ $num -gt 0 ]
do
	total=$((total+num%10))
	num=`expr $num/10 | bc`
done
echo "Total" $total

#output

#neel@NeelRana:/mnt/e/ROLWALA/sem-3/o.s/practicles$ sh sum.sh
#Enter a five digit number :
#12345
#The sum of  12345  is :  15
# neel@NeelRana:/mnt/e/ROLWALA/sem-3/o.s/practicles$
