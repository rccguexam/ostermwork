# check the given no is odd or not 

echo "Enter the number  : " 
read num

rem=$(($num % 2))
if [ $rem -eq 0 ] 
then
	echo "The number is even " 
else
	echo "The number is odd "
fi 
#output 


#neel@NeelRana:/mnt/e/ROLWALA/sem-3/o.s/practicles$ sh s_s_8.sh
#Enter the number  :
#12
#The number is even
#neel@NeelRana:/mnt/e/ROLWALA/sem-3/o.s/practicles$
