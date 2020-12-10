#36. Accept the measure (angles) of a triangle and displa the type of triangle. (eg. acute, right,obtuse)

read -p "Enter Angle: " angle

if [ $angle -lt 0 ]
then
    echo "Incorrect Input"
elif [ $angle -gt 180 ]
then
    echo "Incorrect Input"
elif [ $angle -eq 90 ]
then
    echo "Right Angle"
elif [ $angle -lt 90 ]
then
    echo "Acute Angle"
else
    echo "Obtuse Angle"
fi


# Output:

# niravchavda@niravchavda:~/Desktop/Learning/shell$ sh 36.sh 
# Enter Angle: -1
# Incorrect Input

# niravchavda@niravchavda:~/Desktop/Learning/shell$ sh 36.sh 
# Enter Angle: 181
# Incorrect Input

# niravchavda@niravchavda:~/Desktop/Learning/shell$ sh 36.sh 
# Enter Angle: 89
# Acute Angle

# niravchavda@niravchavda:~/Desktop/Learning/shell$ sh 36.sh 
# Enter Angle: 90
# Right Angle

# niravchavda@niravchavda:~/Desktop/Learning/shell$ sh 36.sh 
# Enter Angle: 91
# Obtuse Angle