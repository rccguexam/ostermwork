#Write a shell script to generate summary from a file : “student.dat” with following format :
	
#	Student_no : student_name : gender : marks1 : marks2 : marks3
#	Each field must be separated by a delimeter ‘-‘

#	Process the following queries:
#		• Calculate the total marks of each student
#		• Calculate the percentage of marks for each student
#		• Count the total number of male and female students
#		• Count the total number of students who pass and those who fail.


cat student.dat

male=0
female=0
pass=0
fail=0

while read line
do
        set $line
        total=`expr $4 + $5 + $6`
        echo "$2 obtained $total marks out of 300"
        per=`expr $total \* 100 / 300`
        echo "$2 obtained $per percentage"

        if [ $3 == 'M' ]
        then
                male=`expr $male + 1`
        else
                female=`expr $female + 1`
        fi

        if [ $4 -ge 35 -a $5 -ge 35 -a $6 -ge 35 ]
        then
                pass=$(($pass + 1))
        else
                fail=$(($fail + 1))
        fi
done < student.dat

echo "Toatal male students = $male"
echo "Total female students = $female"
echo "Total pass students = $pass"
echo "Total fail students = $fail"
									
#OUTPUT

#21 Shubham M 85 89 78
#23 Devangi F 80 75 76
#30 Ajinkya M 81 70 75
#10 Pradip M 79 69 70
#02 Pratik M 58 30 58
#06 Shivangi F 45 56 58

#Shubham obtained 252 marks out of 300
#Shubham obtained 84 percentage
#Devangi obtained 231 marks out of 300
#Devangi obtained 77 percentage
#Ajinkya obtained 226 marks out of 300
#Ajinkya obtained 75 percentage
#Pardip obtained 218 marks out of 300
#Pradip obtained 72 percentage
#Pratik obtained 146 marks out of 300
#Pratik obtained 48 percentage
#Shivangi obtained 159 marks out of 300
#Shivangi obtained 53 percentage

#Toatal male students = 4
#Total female students = 2
#Total pass students = 5
#Total fail students = 1
