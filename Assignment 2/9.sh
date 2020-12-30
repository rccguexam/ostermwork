# Q9)

# Create two files: subjects.dat and students.dat containing the subject details and the student details.
#   Sample data is as shown below:

#	subjects.dat
#	
#	Course_id-Semester_id-Subject_id-Subject_name
#	CS-1-1-FCO
#	CS-1-2-FOP
#	CS-1-3-SL
#	CS-2-1-DS
#	CS-2-2-DBMS
#	CS-3-1-OS
#	CS-3-2-JAVA
#
#	faculty.dat
#	
#	Faculty_id:Semester_id:Subject_id
#	F1-2-1
#	F2-3-2
#	F3-1-3
#	F1-1-1

#   Write a shell script to list the faculties and their respective subjects. Sample Output will be :
#	
#	F1 : FCO, DS
#	F2 : JAVA
#	F3 : SL
#***************************************************************************************************************************

while read line
do
	sem=`echo $line | cut -d " " -f2`
	sub=`echo $line | cut -d " " -f3`
	fac=`echo $line | cut -d " " -f1`

	while read line2
	do
		set $line2

		if [ $sem == $2 -a $sub == $3 ]
		then
			echo "$fac teaches $4 subject"
		fi
	done < "subjects.dat"

done < "faculty.dat"
