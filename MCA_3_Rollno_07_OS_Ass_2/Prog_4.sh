#Q4)

#Write a shell script to generate summary from a file : “student.dat” with following format :
	
#	Student_no : student_name : gender : marks1 : marks2 : marks3
#	Each field must be separated by a delimeter ‘-‘

#	Process the following queries:
#		• Calculate the total marks of each student
#		• Calculate the percentage of marks for each student
#		• Count the total number of male and female students
#		• Count the total number of students who pass and those who fail.


#------------------------------------------------------------------------------------------------------------------------------------

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


#------------------------------------------------------------------------------------------------------------------------------------

#Output :
#[mca007@lakshya ~]$ sh Ass2_4.sh
#21 Yash M 85 89 78
#11 Ankita F 80 75 76
#04 Jigar M 81 70 75
#24 Noman M 79 69 70
#09 Rizwan M 58 30 58
#07 Shreya F 45 56 58

#Yash obtained 252 marks out of 300
#Yash obtained 84 percentage
#Ankita obtained 231 marks out of 300
#Ankita obtained 77 percentage
#Jigar obtained 226 marks out of 300
#Jigar obtained 75 percentage
#Noman obtained 218 marks out of 300
#Noman obtained 72 percentage
#Rizwan obtained 146 marks out of 300
#Rizwan obtained 48 percentage
#Shreya obtained 159 marks out of 300
#Shreya obtained 53 percentage

#Toatal male students = 4
#Total female students = 2
#Total pass students = 5
#Total fail students = 1
#[mca007@lakshya ~]$


#------------------------------------------------------------------------------------------------------------------------------------

