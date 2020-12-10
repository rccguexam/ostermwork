echo "Enter Five digit Number : "
read no
num=$no
sum=0
while [ "$no" -gt 0 ] 
do 
	rem=$(($no % 10))
	sum=$(($sum + $rem))
	no=$(($no / 10))
done
echo "Sum of "$num" of digits = "$sum

#output

#pushti@DESKTOP-A0UDC7F:~$ sh a4.sh
#Enter Five digit Number :
#12345
#Sum of 12345 of digits = 15
