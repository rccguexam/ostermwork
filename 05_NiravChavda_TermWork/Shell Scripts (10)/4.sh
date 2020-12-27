#!/usr/bin/bash

# Write a shell script to generate summary from a file : “student.dat” with following format :

# Student_no : student_name : gender : marks1 : marks2 : marks3

# Each field must be separated by a delimeter ‘-‘

# Process the following queries:
#     • Calculate the total marks of each student
#     • Calculate the percentage of marks for each student
#     • Count the total number of male and female students
#     • Count the total number of students who pass and those who fail.

students=`cut -d "-" -f1- student.dat`

males=0
females=0
passing=0
failing=0

for student in $students
do
    rollno=`echo "$student"|cut -d "-" -f1`
    name=`echo "$student"|cut -d "-" -f2`
    gender=`echo "$student"|cut -d "-" -f3`
    m1=`echo "$student"|cut -d "-" -f4`
    m2=`echo "$student"|cut -d "-" -f5`
    m3=`echo "$student"|cut -d "-" -f6`
    total=`expr $m1 + $m2 + $m3`
    per=`echo "scale=2; $total / 3"|bc`


    if [ $gender == "M" ]
    then
        males=$((males + 1))
    else
        females=$((females + 1))
    fi

    if [ 1 -eq `echo "$per < 35.0"|bc` ]
    then
        failing=$((failing+1))
    else
        passing=$((passing+1))
    fi

    echo "Rollno: $rollno, Name: $name, Total Marks: $total, Per: $per"
done

echo "There are $males males & $females females."
echo "$passing students have passed & $failing students have failed."

# OUTPUT

# niravchavda@niravchavda:/media/niravchavda/DATA/Study/MCA/SEM III/OS/10 Programs$ cat student.dat
# 02-Pratik-M-42-74-47
# 06-Shivangi-F-54-56-58
# 07-Lakshya-M-41-31-29
# 09-Neel-M-74-71-68
# 10-Pradip-M-72-67-69

# niravchavda@niravchavda:/media/niravchavda/DATA/Study/MCA/SEM III/OS/10 Programs$ ./4.sh
# Rollno: 02, Name: Pratik, Total Marks: 163, Per: 54.33
# Rollno: 06, Name: Shivangi, Total Marks: 168, Per: 56.00
# Rollno: 07, Name: Lakshya, Total Marks: 101, Per: 33.66
# Rollno: 09, Name: Neel, Total Marks: 213, Per: 71.00
# Rollno: 10, Name: Pradip, Total Marks: 208, Per: 69.33
# There are 4 males & 1 females.
# 4 students have passed & 1 students have failed.