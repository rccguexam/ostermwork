echo "Enter user name : "
read name 

who | grep $name > /dev/null 

if [ $? -eq 0 ] 
then 
	echo "User logged in : "
	echo "Please enter a message to send him :"
	read msg 
	echo $msg 
else
	echo "User is not logged in " 
fi

#output

#neel@neel-VirtualBox:~/neel$ sh s_s_12.sh
#Enter user name
#neel
#User is logged in
#Please enter a message to send him
#Hii !! How are you ?
#Hii !! How are you ?
#neel@neel-VirtualBox:~/neel$ sh s_S_12.sh
#Enter user name
#Piyu 
#User is not logged in 
#neel@neel-VirtualBox:~/neel$
