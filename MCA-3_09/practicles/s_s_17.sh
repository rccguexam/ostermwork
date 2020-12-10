echo "Enter 1st Integer :"
read no1
echo "Enter 2nd Integer :"
read no2
ch=1
while [ $ch -ne 0 ]
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
														"0") echo "Exit..";;
												                *) echo "Invalid Choice.."
														esac
													done

													#Output:

													#neel@NeelRana:/mnt/e/Rolwala/sem-3/o.s/practicles$ sh s_s_17.sh
													#Enter 1st Integer :
													#20
													#Enter 2nd Integer :
													#10

													#1.Addition
													#2.Subtraction
													#3.Multiplication
													#4.Division
													#0.Exit

													#Enter Your Choice :
													#1
													#Addition =  30

													#1.Addition
													#2.Subtraction
													#3.Multiplication
													#4.Division
													#0.Exit

													#Enter Your Choice :
													#2
													#Subtraction =  10

													#1.Addition
													#2.Subtraction
													#3.Multiplication
													#4.Division
													#0.Exit

													#Enter Your Choice :
													#3
													#Multiplication =  200

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
													#0
													#Exit..
													#neel@NeelRana:/mnt/e/Rolwala/sem-3/o.s/practicles$
