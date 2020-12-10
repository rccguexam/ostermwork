echo "The list of File Names in the current Directory"
echo "Which have read,write and execute permission"

for file in *
do
	if [ -f $file ]
	then
	       if [ -r $file -a -w $file -a -x $file ]
	       then
		       ls $file
		fi	       
	fi
done

#output

#preksha@DESKTOP-A0UDC7F:~$ sh a31.sh
#The list of File Names in the current Directory
#Which have read,write and execute permission
#a1.sh
