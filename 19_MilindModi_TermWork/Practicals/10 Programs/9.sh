 
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
awk -F "-" '{print $1","$2$3}' subjects.dat | sort -n -t ',' -k 2 > sub1.dat

awk -F "-" '{print $1","$2$3}' faculty.dat | sort -n -t ',' -k 2 > fac1.dat


$ join -t ',' -1 2 -2 2  sub1.dat fac1.dat | awk -F ',' '{print $4,$3}' |sort -u -t ' ' -k1| awk ' {if(a[$1])a[$1]=a[$1]","$2; else a[$1]=$2;} END{for (i in a) print i, a[i]}'
F1 DS,FCO
F2 JAVA
F3 SL


# OUTPUT

# niravchavda@niravchavda:/media/niravchavda/DATA/Study/MCA/SEM III/OS/10 Programs$ ./9.sh
# F1:- DS, FCO  
# F2:- JAVA  
# F3:- SL