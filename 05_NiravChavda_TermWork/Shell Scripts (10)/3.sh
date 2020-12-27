#!/usr/bin/bash

# Create a file “medals.dat” which contains the details of medals won by each country in Olympics. 
# The data in the file may be as given below :
# ( Country name is Primary key.)

# Country         Gold   Silver  Bronze
# ---------------------------------------------
# India                 21      12         15
# Pakistan            12      10         08
# USA                 10      14         19
# Srilanka            00      09         07
# ………….and so on………………..

#     • Write a shell script which will ask the user to enter the Country name, further modify the no. of medals for that country.
#     • Delete all the countries who get zero Gold medals.
#     • Calculate the total no. of medals won by each country.
#     • Find the country with highest Gold medals.

countries=`cut -d ":" -f1 medals.dat`
echo -n "Following are the countries: "
for country in $countries
do
    echo -n $country ", "
done
echo ""

echo -n "Enter a country to modify: "
read c

selectedCountry=`grep -n -i $c medals.dat`

gold_old=`echo "$selectedCountry"|cut -d ":" -f3`
silver_old=`echo "$selectedCountry"|cut -d ":" -f4`
bronze_old=`echo "$selectedCountry"|cut -d ":" -f5`

countryName=`echo "$selectedCountry"|cut -d ":" -f2`

echo "Modifying: $c"
echo "Enter number of Gold, Silver & Bronze medals for $c: "
read gold_new
read silver_new
read bronze_new

oldCountry=`echo "$selectedCountry"|cut -d ":" -f2-`
updatedCountry=$countryName":"$gold_new":"$silver_new":"$bronze_new

echo "Old Country Data: $oldCountry"
echo "Updated Country Data: $updatedCountry"

sed -i "s/$oldCountry/$updatedCountry/" medals.dat

echo "Before Deleting: "
cat medals.dat
echo ""

sed -i "/00/d" medals.dat

echo "After Deleting: "
cat medals.dat
echo ""
echo ""

maxName=""
maxMedals=0

for country in `cut -d ":" -f1- medals.dat`
do
    countryName=`echo "$country"|cut -d ":" -f1`
    gold=`echo "$country"|cut -d ":" -f2`
    silver=`echo "$country"|cut -d ":" -f3`
    bronze=`echo "$country"|cut -d ":" -f4`
    total=`expr $gold + $silver + $bronze`
    echo "$countryName has total $total medals."
    
    if [ $total -gt $maxMedals ]
    then
        maxName=$countryName
        maxMedals=$total
    fi    
done

echo "$maxName has maximum $maxMedals medals"


# OUTPUT

# niravchavda@niravchavda:/media/niravchavda/DATA/Study/MCA/SEM III/OS/10 Programs$ ./3.sh
# Following are the countries: India , Pakistan , USA , Srilanka , 
# Enter a country to modify: srilanka
# Modifying: srilanka
# Enter number of Gold, Silver & Bronze medals for srilanka: 
# 00
# 07
# 09
# Old Country Data: Srilanka:10:12:14
# Updated Country Data: Srilanka:00:07:09
# Before Deleting: 
# India:21:12:15
# Pakistan:12:10:08
# USA:10:14:19
# Srilanka:00:07:09

# After Deleting: 
# India:21:12:15
# Pakistan:12:10:08
# USA:10:14:19


# India has total 48 medals.
# Pakistan has total 30 medals.
# USA has total 43 medals.
# India has maximum 48 medals