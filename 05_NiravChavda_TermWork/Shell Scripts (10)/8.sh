#!/usr/bin/bash

# In a college, students are allowed to select any one elective subject during his studies. Create two files by entering the data as mentioned below (you may skip the heading line if required) :

# File : elective.dat
#       Code     Game
# ---------------------------
#     101 AI
#     102 Computer Graphics
#     103 Parallel Processing
#     104 Data Mining

# File : students.dat
# RollNo.      Name     Code
# ------------------------------
# 1          Sonal            101
# 2          Madhu          101
# 3          Mahim          103
# 4          Esha              104

# Write a shell script to list the students according to their choice of electives …

# Eg.  AI :- Sonal, Madhu
#        Computer Graphics: -
#        Parallel Processing :- Mahim
#        Data Mining :- Esha


subjects=`cut -d ":" -f1- elective.dat`

for subject in $subjects
do
    id=`echo "$subject"|cut -d ":" -f1`
    name=`echo "$subject"|cut -d ":" -f2`

    echo -n "$name:- "

    students=`grep -i "$id" electiveStudents.dat`
    for student in $students
    do
        studentName=`echo "$student"|cut -d ":" -f2`
        echo -n "$studentName, "
    done   
    echo -e "\b\b "
done


# OUTPUT

# niravchavda@niravchavda:/media/niravchavda/DATA/Study/MCA/SEM III/OS/10 Programs$ ./8.sh
# AI:- Sonal, Madhu  
# ComputerGraphics:  
# ParallelProcessing:- Mahim  
# DataMining:- Esha