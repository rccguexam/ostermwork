# show the power of 2^0 to 2^5

echo "The power of 2^0 to 2^5" 
i=0 
while [ $i -le 5 ] 
do 
	echo "The power of 2 ^ $i is : "
	echo "2^$i" | bc 	
	i=$(($i+1))
done 
