#!/usr/bin/bash

# Create a file “election.dat” which contains the Election details for a specific city.

# Field               Description
# ------------------------------------
# Idno                Numeric    - Unique
# Name              Character – Voter’s Name
# Sex                 Character – M / F
# Age                Numeric  
# Ward              Numeric  – Ward no. / Division no. of the city.

# Sample data:
# e101-abhishek-M-35-44
# e102-ashutosh-M-97-14
# e103-anamika-F-21-50

# Suppose the same file is to be modified after 4 years. Write a shell script to simulate this process.
# Your program must update the age of all People ( Add 4 years to age). In case if the age exceeds 99 then delete the record from the file, assuming that the person is dead.

# Display the election.dat and final output of your program.

data=`cut -d "-" -f1- election.dat`

echo "Before 4 years: "
cat election.dat

for datum in $data
do
    age=`echo "$datum"|cut -d "-" -f4`

    newAge=$((age + 4))

    if [ $newAge -gt 99 ]; then
        sed -i "/$datum/d" election.dat
    else
        id=`echo "$datum"|cut -d "-" -f1`
        name=`echo "$datum"|cut -d "-" -f2`
        sex=`echo "$datum"|cut -d "-" -f3`
        ward=`echo "$datum"|cut -d "-" -f5`
        newDatum=$id-$name-$sex-$newAge-$ward
        sed -i "s/$datum/$newDatum/" election.dat
    fi

done

echo -e "\n\nAfter 4 years: "
cat election.dat
echo ""


# OUTPUT 
# Before 4 years: 
# E101-Abhishek-M-35-44
# E102-Ashutosh-M-97-14
# E103-Anamika-F-21-50

# After 4 years: 
# E101-Abhishek-M-39-44
# E103-Anamika-F-25-50