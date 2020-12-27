`cmp -s $1 $2`

if [ $? -eq 0 ]
then
	echo "$1 and $2 are same files"
        rm $2
      	echo "$2 file deleted"
else
	echo "$1 and $2 are not same files"
fi

#output
#Rutwik@DESKTOP-A0UDC7F:~$ sh a11.sh demo2.txt demotest.txt
#demo2.txt and demotest.txt are not same files

