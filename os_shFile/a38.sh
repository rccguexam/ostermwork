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

#output

#Enter 1st Number :
#3
#Enter 2nd Number :
#1
#Enter 3rd Number :
#2
#3 is Largest..
#1 is Smallest..

