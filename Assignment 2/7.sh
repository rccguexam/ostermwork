#Q7)

#Create a file “election.dat” which contains the Election details for a specific city.

#	Field               Description
#      ------------------------------------
#	Idno                Numeric    - Unique
#	Name                Character – Voter’s Name
#	Sex                 Character – M / F
#	Age                 Numeric  
#	Ward                Numeric  – Ward no. / Division no. of the city.

#	Sample data:
#		e101 - abhishek - M - 35 - 44
#		e102 - ashutosh - M - 97 - 14
#		e103 - anamika - F - 21 - 50

#	Suppose the same file is to be modified after 4 years. Write a shell script to simulate this process.
#	Your program must update the age of all People ( Add 4 years to age). In case if the age exceeds 99 then delete the record
#	from the file, assuming that the person is dead.

#	Display the election.dat and final output of your program.

#****************************************************************************************************************************


echo "File before update"
cat "election.dat"

while read line
do
	set $line
	age=$(($4 + 4))

	if [ $age -gt 99 ]
	then
		echo "$1 record deleted"
	else
		echo "$1 $2 $3 $age $5" >> "modify.dat"
	fi
done < "election.dat"

cp "modify.dat" "election.dat"
rm "modify.dat"

echo "File after update"
cat election.dat
