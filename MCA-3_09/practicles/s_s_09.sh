# check the no is prime or not 

echo "Enter the number you want to check the prime or not : "
read num 

i=2
flag=0

while test $i -le `expr $num / 2`
do 
	if test `expr $num % $i` -eq 0	
	then 
		flag=1
	fi
	i=`expr $i + 1`
done 

if [ $num -eq 1 ] 
then 
	echo $num " is niether prime nor composite " 
else
	if [ $flag -eq 0 ] 
	then 
		echo $num " is prime number " 
	else 
		echo $num " is not prime number "
	fi
fi

#output
# neel@NeelRana:/mnt/e/ROLWALA/sem-3/o.s/practicles$ sh s_s_9.sh
# Enter the number you want to check the prime or not :
# 5
# 5  is prime number
# neel@NeelRana:/mnt/e/ROLWALA/sem-3/o.s/practicles$ sh s_s_9.sh
# Enter the number you want to check the prime or not :
# 6
# 6  is not prime number
# neel@NeelRana:/mnt/e/ROLWALA/sem-3/o.s/practicles$
