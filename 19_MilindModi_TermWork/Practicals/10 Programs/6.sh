#!/usr/bin/bash

# Write a Shell script  to generate summary from  a file “books.dat” which contains the following details :

# Field             Description
# -------------------------------------------------------------------------
# No                Numeric (4) – uniquely identifies each book.
# Title             Alphanumeric(30) – title of the book
# Author          Character(20) – Author of the book
# Publisher      Character(20) – Publisher (PHI , TMH, BPB…)
# Edition         Numeric (2)

# Sample Data:
# b1001Programming in Java           Balagurusway        TMH                 Second
# b1002Computer Networks             Tanenbaum            Pearson             Fifth
# b1003Operating Systems                Chaudhari              Jaico                 First

# After creating the file do the followings :
#     • Your script must replace all the BPB publisher with TMH.
#     • List the titles with the name ‘Java’.
#     • List the books written ‘Balaguruswamy
#     • List the books which are not the first edition

books=`cut -d ":" -f1- books.dat`

echo "Before Replacing: "
cat books.dat

sed -i 's/BPB/TMH/' books.dat

echo -e "\n\nAfter Replacing: "
cat books.dat

echo -e "\n\nTitles with Name Java: "
titles=`grep -i "java" books.dat`

for title in $titles
do
    echo `echo "$title"|cut -d ":" -f2`
done

echo -e "\n\nBooks written by Balaguruswamy: "
titles=`grep -i "balaguruswamy" books.dat`

for title in $titles
do
    echo `echo "$title"|cut -d ":" -f2`
done

echo -e "\n\nBooks not first edition: "

for book in $books
do
    title=`echo "$book"|cut -d ':' -f2`
    edition=`echo "$book"|cut -d ':' -f5`

    if [ $edition != "First" ]
    then
        echo $title
    fi
done


# OUTPUT
# Before Replacing: 
# B1001:Programming_In_Java:Balaguruswamy:TMH:Second
# B1002:Computer_Networks:Tanenbaum:Pearson:Fifth
# B1003:Operating_Systems:Chaudhari:Jaico:First
# B1004:Operating_Systems2:Chaudhari:BPB:First
# B1005:Programming_In_Java_2:Balaguruswamy:TMH:Third

# After Replacing: 
# B1001:Programming_In_Java:Balaguruswamy:TMH:Second
# B1002:Computer_Networks:Tanenbaum:Pearson:Fifth
# B1003:Operating_Systems:Chaudhari:Jaico:First
# B1004:Operating_Systems2:Chaudhari:TMH:First
# B1005:Programming_In_Java_2:Balaguruswamy:TMH:Third

# Titles with Name Java: 
# Programming_In_Java
# Programming_In_Java_2


# Books written by Balaguruswamy: 
# Programming_In_Java
# Programming_In_Java_2


# Books not first edition: 
# Programming_In_Java
# Computer_Networks
# Programming_In_Java_2