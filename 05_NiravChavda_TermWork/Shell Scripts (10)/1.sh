# In a college, students are allowed to select any one sporting event during his studies. 
# Create two files as mentioned below :

# File : sports.dat
#       Code     Game
# ---------------------------
#     101 Cricket
#     102 Football
#     103 Tennis
#     104 Badminton

# File : students.dat
# Name     Code
# ------------------------------
# Aamir     101
# Sharukh  103
# Salman   103
# Ajay       102


# Write a shell script to list the students according to their choice of games …
# Eg.  Cricket :  Aamir
#         Football : Ajay
#         Tennis :   Sharukh, Salman



sports=`cut -d ";" -f1,2 sports.dat`
for sport in $sports
do
    sportCode=`echo "$sport"|cut -d ";" -f1`
    sportName=`echo "$sport"|cut -d ";" -f2`
    namesList=`grep -i "$sportCode" students.dat`
    names=`echo "$namesList"|cut -d ";" -f1`

    echo -n $sportName ": "
    for name in $names
    do
        echo -n $name ", "
    done
    echo ""
done


# OUTPUT

# niravchavda@niravchavda:/media/niravchavda/DATA/Study/MCA/SEM III/OS/10 Programs$ ./1.sh
# Cricket : Aamir , 
# Football : Ajay , 
# Tennis : Sharukh , Salman , 
# Badminton : 