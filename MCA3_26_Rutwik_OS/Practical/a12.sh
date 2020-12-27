echo "Enter User Name :"
read uname
who | grep $uname > /dev/null

if [ $? -eq 0 ]
then
	 echo "User is Logged in.."
	 echo "Please enter message :"
	 read msg
	 echo $msg
else
	echo "User is not logged in .."
fi

#output
#[ec2-user@ip-172-31-93-145 ~]$ sh a12.sh
#Enter User Name :
#Rutwik
#User is Logged in..
#Please enter message :
#hii
#hii

