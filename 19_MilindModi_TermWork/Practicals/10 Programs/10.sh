#!/usr/bin/bash

# Create two files employee.dat and departments.dat and add atleast 10 records in the following format :

# employee.dat
# emp_id:department_id:birthdate
# e101:M1:11-01-1960
# e102:C1:21-03-1973
# e103:M2:21-03-1973
# e104:C1:21-03-1973
# e105:B1:08-10-1965
# e101:M1:11-11-1964

# departments.dat
# departmend_id:department_name
# B1:Botany
# C1:Chemistry
# M1:Mathematics
# M2:Management

# Write a shell script to do the followings:
#     1) List all the employee_ids department-wise
#     2) List the employee_ids born after 1970
#     3) List the employee_ids according to birthdate in sorted order


departments=`cut -d ":" -f1- departments.dat`
employees=`cut -d ":" -f1- employee.dat`

for department in $departments
do
    d_id=`echo "$department"|cut -d ":" -f1`
    d_name=`echo "$department"|cut -d ":" -f2`
    echo -n "$d_name:- "
    for employee in $employees
    do
        emp_id=`echo "$employee"|cut -d ":" -f1`
        emp_did=`echo "$employee"|cut -d ":" -f2`
        if [ $d_id ==  $emp_did ]; then
            echo -n "$emp_id, "
        fi
    done
    echo -e "\b\b "
done

echo -e "\nEmployees born after 1970: "
for employee in $employees
do
    emp_id=`echo "$employee"|cut -d ":" -f1`
    birthdate=`echo "$employee"|cut -d ":" -f3`
    emp_year=`echo "$birthdate"|cut -d "-" -f3`
    if [ $emp_year -gt 1970 ]; then
        echo "ID: $emp_id, Birthdate: $birthdate"
    fi
done

echo -e "\nEmployee ID Sorted by birthdates: "

sort -t "-" -nk3 -nk2 -nk1 employee.dat|cut -d ":" -f1



# OUTPUT
 
# Botany:- e105  
# Chemistry:- e102, e104  
# Mathematics:- e101, e106  
# Management:- e103  

# Employees born after 1970: 
# ID: e102, Birthdate: 21-03-1973
# ID: e103, Birthdate: 21-03-1973
# ID: e104, Birthdate: 21-03-1973

# Employee ID Sorted by birthdates: 
# e101
# e106
# e105
# e102
# e103
# e104