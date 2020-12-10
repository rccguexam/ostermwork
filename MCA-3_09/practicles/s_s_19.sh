
#Fibonnaci series : 
echo "How many terms you want to generated  " 
read n 

x=0
y=1 
i=2
echo "Fibonacci series upto $n numbers  :"
echo "$x" 
echo "$y"

while [ $i -lt $n ] 
do
	i=`expr $i + 1 `
	z=`expr $x + $y `
	echo "$z"	
	x=$y
	y=$z
done


#Output:

#neel@NeelRana:/mnt/e/Rolwala/sem-3/o.s/practicles$ sh s_s_19.sh
#How many terms you want to generated
#5
#Fibonacci series upto 5 numbers  :
#0
#1
#1
#2
#3
#neel@NeelRana:/mnt/e/Rolwala/sem-3/o.s/practicles$
