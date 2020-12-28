#Create a file “medals.dat” which contains the details of medals won by each
#country in Olympics. The data in the file may be as given below :
#( Country name is Primary key.)
#Country Gold Silver Bronze
#---------------------------------------------
#India 21 12 15
#Pakistan 12 10 08
#USA 10 14 19
#Srilanka 00 09 07
#………….and so on………………..
#• Write a shell script which will ask the user to enter the Country name, further modify the no. of medals for that country.
#• Delete all the countries who get zero Gold medals.
#• Calculate the total no. of medals won by each country.
#• Find the country with highest Gold medals.


cat "medals.dat"

echo -n "Enter country name to modify medals : "
read country
echo -n "Enter gold medals :"
read gold
echo -n "Enter silver medals : "
read silver
echo -n "Enter bronze medals : "
read bronze

while read line
do
	set $line
        if [ $country = $1 ]
        then
                echo "$1 $gold $silver $bronze" >> "temp.dat"
        else
                echo $line >> "temp.dat"
        fi
done < "medals.dat"

cp "temp.dat" "medals.dat"

echo "Medal list after update"
cat "medals.dat"

rm temp.dat

echo "-------------------------------------------"
while read line
do
        set $line
        if [ $2 -eq 00 ] && [ $3 -eq 00 ] && [ $4 -eq 00 ]
        then
                echo "$1 country deleted"
        else
                echo $line >> "temp.dat"
        fi
done < "medals.dat"

cp "temp.dat" "medals.dat"
cat "medals.dat"

rm temp.dat
echo "------------------------------------------"

while read line
do
        set $line
        total=`expr $2 + $3 + $4`
        echo "Total medals won by $1 = $total"
        echo "$1 $2" >> highmedals.txt

done < "medals.dat"

echo "------------------------------------------"
echo "`sort -k2 -n -r highmedals.txt | head -1 | cut -d " " -f1` won the highest
gold medals"

rm highmedals.txt
							

#OUTPUT

#India 21 12 15
#Pakistan 12 10 08
#USA 10 14 19
#Srilanka 00 09 07
#Germany 05 08 07
#China 00 00 00
#SouthAfrica 02 00 00
#NewZealand 00 07 03
#Enter country name to modify medals : Srilanka
#Enter gold medals :01
#Enter silver medals : 07
#Enter bronze medals : 05
#Medal list after update
#India 21 12 15
#Pakistan 12 10 08
#USA 10 14 19
#Srilanka 01 07 05
#Germany 05 08 07
#China 00 00 00
#SouthAfrica 02 00 00
#NewZealand 00 07 03
#-------------------------------------------
#China country deleted
#India 21 12 15
#Pakistan 12 10 08
#USA 10 14 19
#Srilanka 01 07 05
#Germany 05 08 07
#SouthAfrica 02 00 00
#NewZealand 00 07 03
#------------------------------------------
#Total medals won by India = 48
#Total medals won by Pakistan = 30
#Total medals won by USA = 43
#Total medals won by Srilanka = 13
#Total medals won by Germany = 20
#Total medals won by SouthAfrica = 2
#Total medals won by NewZealand = 10
#------------------------------------------
#India won the highest
#gold medals
