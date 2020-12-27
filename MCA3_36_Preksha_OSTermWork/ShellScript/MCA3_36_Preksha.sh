#Name : Preksha Sheth
#RollNo: 36
#Subject : OS(Sessional2)

#1. Create a shell script to calculate the perimeter of a circle with radius=4


echo "Enter the radius for circle perimeter :"
read radius

perimeter=`echo "scale = 2; 2 * 3.14 * $radius" | bc`

echo "Perimeter of circle is $perimeter..."


#OUTPUT :
#Enter the radius for circle perimeter :
#4
#Perimeter of circle is 25.12...



#2. Find the largest and smallest of 3 different numbers.

echo "Enter 1st Number :"
read no1
echo "Enter 2nd Number :"
read no2
echo "Enter 3rd Number :"
read no3

if [ $no1 -gt $no2 -a $no1 -gt $no3 ]
then
	echo "$no1 is Largest.."
elif [ $no2 -gt $no1 -a $no2 -gt $no3 ]
then
      	echo "$no2 is Largest.."
else
        echo "$no3 is Largest.."
fi


if [ $no1 -lt $no2 -a $no1 -lt $no3 ]
then
       	echo "$no1 is Smallest.."
elif [ $no2 -lt $no1 -a $no2 -lt $no3 ]
then
        echo "$no2 is Smallest.."
else
	echo "$no3 is Smallest..."
fi


#OUTPUT:

#Enter 1st Number :
#46
#Enter 2nd Number :
#98
#Enter 3rd Number :
#12
#98 is Largest..
#12 is Smallest...
