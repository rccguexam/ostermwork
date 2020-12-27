echo "Enter !st Integer :"
read no1
echo "Enter 2nd Integer :"
read no2

while [ 1 ]
do 
	echo  "\n1.Addition\n2.Subtraction\n3.Multiplication\n4.Division\n0.Exit\n"
	echo "Enter Your Choice :"
	read ch

	case $ch in
		"1") ans=`expr $no1 + $no2`
			echo "Addition = " $ans ;;
		"2") ans=`expr $no1 - $no2`
			echo "Subtraction = " $ans ;;
		"3") ans=`expr $no1 \* $no2`
			echo "Multiplication = " $ans ;;
		"4") ans=`expr $no1 \/ $no2`
			echo "Division = " $ans ;;
		"0") echo "Exit.." 
			break;;
		*) echo "Invalid Choice.."
	esac
done

#output
#pushti@DESKTOP-A0UDC7F:~$ sh a17.sh
#Enter !st Integer :
#40
#Enter 2nd Integer :
#20

#1.Addition
#2.Subtraction
#3.Multiplication
#4.Division
#0.Exit

#Enter Your Choice :
#1
#Addition =  60

#1.Addition
#2.Subtraction
#3.Multiplication
#4.Division
#0.Exit

#Enter Your Choice :
#3
#Multiplication =  800

#1.Addition
#2.Subtraction
#3.Multiplication
#4.Division
#0.Exit

#Enter Your Choice :
#4
#Division =  2

#1.Addition
#2.Subtraction
#3.Multiplication
#4.Division
#0.Exit

#Enter Your Choice :
#2
#Subtraction =  20

#1.Addition
#2.Subtraction
#3.Multiplication
#4.Division
#0.Exit

#Enter Your Choice :
#u
#Invalid Choice..

#1.Addition
#2.Subtraction
#3.Multiplication
#4.Division
#0.Exit

#Enter Your Choice :
#5
#Invalid Choice..

#1.Addition
#2.Subtraction
#3.Multiplication
#4.Division
#0.Exit

#Enter Your Choice :
#0
#Exit..
