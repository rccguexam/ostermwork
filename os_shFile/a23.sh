if [ $# -eq 1 ]
then
	while [ 1 ]
	do
		who | grep $1
		if [ $? -eq 0 ]
		then
			echo "$1 is logged in"
			break
																				                else
																							sleep 10
																				                fi
																				        done
																				else
																				        echo "please enter user name."
																				fi
