#!/usr/bin/bash

# Create two files: subjects.dat and students.dat containing the subject details and the student details. Sample data is as shown below:

# subjects.dat
# Course_id-Semester_id-Subject_id-Subject_name
# CS-1-1-FCO
# CS-1-2-FOP
# CS-1-3-SL
# CS-2-1-DS
# CS-2-2-DBMS
# CS-3-1-OS
# CS-3-2-JAVA

# faculty.dat
# Faculty_id:Semester_id:Subject_id
# F1-2-1
# F2-3-2
# F3-1-3
# F1-1-1

# Write a shell script to list the faculties and their respective subjects. Sample Output will be :
# F1 : FCO, DS
# F2 : JAVA
# F3 : SL

facultyIDs=`cut -d "-" -f1 faculty.dat | sort -t "-" -k1 -nk2|uniq`
subjects=`cut -d "-" -f1- subjects.dat`


for id in $facultyIDs; do
    facultyData=`grep -i "$id" faculty.dat`
    
    echo -n "$id:- "

    for datum in $facultyData; do
        f_sem=`echo "$datum"|cut -d "-" -f2`
        f_sub=`echo "$datum"|cut -d "-" -f3`
        
        for subject in $subjects; do
            s_sem=`echo "$subject"|cut -d "-" -f2`
            s_id=`echo "$subject"|cut -d "-" -f3`
            s_name=`echo "$subject"|cut -d "-" -f4`

            if [ $f_sem -eq $s_sem ] && [ $f_sub -eq $s_id ]; then
                echo -n "$s_name, "
            fi

        done
    done
        echo -e "\b\b "
done


# OUTPUT

# niravchavda@niravchavda:/media/niravchavda/DATA/Study/MCA/SEM III/OS/10 Programs$ ./9.sh
# F1:- DS, FCO  
# F2:- JAVA  
# F3:- SL