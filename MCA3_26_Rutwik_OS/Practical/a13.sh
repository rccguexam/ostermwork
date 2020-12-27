if [ $# -eq 1 ]
then
	  total=`who | grep -c $1`
	  echo "$1 logged in on total $total terminals"
else
          echo "please enter user name..."
fi

#output
#Rutwik@DESKTOP-A0UDC7F:~$ sh a13.sh
#please enter user name...
#Rutwik@DESKTOP-A0UDC7F:~$ sh a13.sh Rutwik
#Rutwik logged in on total 1 terminals


