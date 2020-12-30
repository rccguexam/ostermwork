# Q10)

# Create two files employee.dat and departments.dat and add atleast 10 records in the following format :

#	employee.dat

#	emp_id:department_id:birthdate
#	e101:M1:11-01-1960
#	e102:C1:21-03-1973
#	e103:M2:21-03-1973
#	e104:C1:21-03-1973
#	e105:B1:08-10-1965
#	e101:M1:11-11-1964

#	departments.dat

#	departmend_id:department_name
#	B1:Botany
#	C1:Chemistry
#	M1:Mathematics
#	M2:Management

#    Write a shell script to do the followings:
#	1) List all the employee_ids department-wise
#	2) List the employee_ids born after 1970
#	3) List the employee_ids according to birthdate in sorted order
#****************************************************************************************************************************


echo "Department wise employees"

while read line
do
	did=`echo $line | cut -d " " -f1`
	dname=`echo $line |  cut -d " " -f2`

	echo "Department $dname"
	while read line2
	do
		edid=`echo $line2 | cut -d " " -f2`
		eid=`echo $line2 | cut -d " " -f1`

		if [ $edid == $did ]
		then
			echo $eid
		fi

	done < "employee.dat"
done < "department.dat"

echo "Employees born after year 1970 are as follow:"

while read line
do
	age=`echo $line | cut -d " " -f3 | cut -d "-" -f3`

	if [ $age -gt 1970 ]
	then
		echo $line
	fi

done < "employee.dat"

echo "Employees sorted according to their DOB"

sort -n -k 3.9 -k 3.5 -k 3 "employee.dat"
