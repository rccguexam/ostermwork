while [ 1 ]
do
	echo -e "\n\n1.List of all the current directory\n2.Print the current directory\n3.print the date \n4.print the users\n0.exit"

	echo "Enter your  choice :"
	read ch

	case $ch in
		"1") ls ;;
		"2") pwd ;;
		"3") date ;;
		"4") who ;; # awk -F: '{print $1}' /etc/passwd
		"0") echo "Exit"
		     break ;;
	          *) echo "Invalid choice."																		              esac
done

#output

#[ec2-user@ip-172-31-93-145 ~]$ sh a16.sh


#1.List of all the current directory
#2.Print the current directory
#3.print the date
#4.print the users
#0.exit
#Enter your  choice :1
#a16.sh  emp.dat  first.sh  mca06  sample.dat  sample.sh  second.sh  stud.dat  third.sh


#1.List of all the current directory
#2.Print the current directory
#3.print the date
#4.print the users
#0.exit
#Enter your  choice :2
#/home/ec2-user


#1.List of all the current directory
#2.Print the current directory
#3.print the date
#4.print the users
#0.exit
#Enter your  choice :3
#Sun Nov 22 08:12:42 UTC 2020


#1.List of all the current directory
#2.Print the current directory
#3.print the date
#4.print the users
#0.exit
#Enter your  choice :4
#ec2-user pts/0        2020-11-22 07:55 (43.241.144.141)


#1.List of all the current directory
#2.Print the current directory
#3.print the date
#4.print the users
#0.exit
#Enter your  choice :5
#Invalid choice..


#1.List of all the current directory
#2.Print the current directory
#3.print the date
#4.print the users
#0.exit
#Enter your  choice :0
#Exit

