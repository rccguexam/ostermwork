#!/usr/bin/bash

# A reputed MCA institute of Gujarat has students from various states. 
# A sample file “students.dat” is shown as under :

# State                M         F
# -----------------------------------
# Gujarat            18        12
# Maharashtra        12        04
# M.P.               08        04
# UP                 05        00
# Rajasthan          07        00

# Total Male candidates are 50 and Female are 20. Write a shell script to generate a Statewise Candidate Distribution Report as under :

#                              STATEWISE CANDIDATES LISTING
# ---------------------------------------------------------------------------------------------
#              STATE                %MALE              %FEMALE           TOTAL
# ---------------------------------------------------------------------------------------------
#              GUJARAT               36                60                         30
#              MAHARASHTRA           24                20                         16
# ……………………….. ………. And so on …………………………………..
              

totalMales=50
totalFemales=20

states=`cut -d ":" -f1- mcaStudents.dat`

echo "-----------------------------------------------"
echo -e "State \t\t %Male \t %Female \t Total"
echo "-----------------------------------------------"

for state in $states
do
    name=`echo "$state"|cut -d ":" -f1`
    males=`echo "$state"|cut -d ":" -f2`
    females=`echo "$state"|cut -d ":" -f3`
    total=`expr $males + $females`

    maleRatio=`echo "$males * 100 / $total"|bc`
    femaleRatio=`echo "$females * 100 / $total"|bc`

    echo -e "$name \t $maleRatio \t $femaleRatio \t\t $total"
done

echo "-----------------------------------------------"


# OUTPUT

# niravchavda@niravchavda:/media/niravchavda/DATA/Study/MCA/SEM III/OS/10 Programs$ ./5.sh
# -----------------------------------------------
# State            %Male   %Female         Total
# -----------------------------------------------
# Gujarat          60      40              30
# Maharashtra      75      25              16
# MadhyaPradesh    66      33              12
# UttarPradesh     100     0               5
# Rajasthan        100     0               7
# -----------------------------------------------