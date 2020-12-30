# Q8)		
#	In a college, students are allowed to select any one elective subject during his studies. Create two files by entering #the data as mentioned below (you may skip the heading line if required) :

#File : elective.dat
#      Code     Game
#---------------------------
#101	AI
#102	Computer Graphics
#103	Parallel Processing
#104	Data Mining

#File : students.dat
#RollNo.      Name     Code
#------------------------------
#1          Sonal            101
#2          Madhu          101
#3          Mahim          103
#4          Esha              104


#Write a shell script to list the students according to their choice of electives …

#Eg.  AI :- Sonal, Madhu
#       Computer Graphics: -
#       Parallel Processing :- Mahim
#       Data Mining :- Esha

#****************************************************************************************************************************

echo "Elective subjects"
cat "elective.dat"

echo "Students details:"
cat "students1.dat"

while read line
do
	set $line
	echo "$2 $3"
	c=`grep -c $1 "students1.dat"`

	if [ $c -eq 0 ]
	then
		echo "No one choosen $2 $3 as elective subject"
	else
		grep $1 "students1.dat" | cut -d " " -f2
	fi

done < "elective.dat"
