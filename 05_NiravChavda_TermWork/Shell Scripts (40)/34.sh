#34. Accept the marks of 5 subjects and calculate the percentage and grade.

read -p "Enter The marks of Subject 1 : " sub1
read -p "Enter The marks of Subject 2 : " sub2
read -p "Enter The marks of Subject 3 : " sub3
read -p "Enter The marks of Subject 4 : " sub4
read -p "Enter The marks of Subject 5 : " sub5
total=$((sub1+sub2+sub3+sub4+sub5))
percentage=$(echo $(echo "scale=1; 100/500" | bc)*$total | bc)
echo "Percentage = " $percentage
if [ $(echo "$percentage > 80" | bc -l) -eq 1 ]
then
        echo "Grade : Distiction"
elif [ $(echo "$percentage > 70" | bc -l) -eq 1 ]
then
        echo "Grade : First Class"
elif [ $(echo "$percentage > 60" | bc -l) -eq 1 ]
then
        echo "Grade : Second Class"
elif [ $(echo "$percentage > 50" | bc -l) -eq 1 ]
then
        echo "Grade : Third Class"
elif [ $(echo "$percentage > 35" | bc -l) -eq 1 ]
then
        echo "Grade : Pass"
else
        echo "Grade : Fail"
fi

#Output:

# niravchavda@niravchavda:~/Desktop/Learning/shell$ sh 34.sh 
# Enter The marks of Subject 1 : 51
# Enter The marks of Subject 2 : 53
# Enter The marks of Subject 3 : 74
# Enter The marks of Subject 4 : 69
# Enter The marks of Subject 5 : 87
# Percentage =  66.8
# Grade : Second Class