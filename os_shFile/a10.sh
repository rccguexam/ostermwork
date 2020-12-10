echo "Enter Year : "
read yr

if [ `expr $yr % 4` -eq 0 -a `expr $yr % 100` -ne 0 -o `expr $yr % 400` -eq 0 ] 
then 
	echo "$yr is leap year."
else
	echo "$yr is not leap year."
fi

#output
#preksha@DESKTOP-A0UDC7F:~$ sh a10.sh
#Enter Year :
#2019
#2019 is not leap year.
