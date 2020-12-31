#Q1)

# In a college, students are allowed to select any one sporting event during his
# studies. Create two files as mentioned below :
# File : sports.dat
# Code Game
# ---------------------------
# 101 Cricket
# 102 Football
# 103 Tennis
# 104 Badminton
# File : students.dat
# Name Code
#------------------------------
# Aamir 101
# Sharukh 103
# Salman 103
# Ajay 102

# Write a shell script to list the students according to their choice of games …
# Eg. Cricket : Aamir
# Football : Ajay
# Tennis : Sharukh, Salman

# ***************************************************************************************************************************

while read line
do
	echo $line

done < sports.dat

echo -e "Choose sport name : "
read sport

code=`grep $sport sports.dat | cut -d ":" -f1`

echo "Following students play $sport"
`grep $code students.dat | cut -d " " -f1 > display.txt`
cat display.txt
rm display.txt
