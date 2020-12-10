echo "Enter angle "
read angle

if [ $angle -ge 0 -a $angle -lt 90 ] 
then
	echo "Acute angle"
elif [ $angle -eq 90 ] 
then
	echo "Right angle " 
elif [ $angle -gt 90 -a $angle -le 180 ] 
then 
	echo "Obtuse angle "
else
	echo "Incorrect input"
fi

#output

#Rutwik@DESKTOP-A0UDC7F:~$ sh a36.sh
#Enter angle
#90
#Right angle
