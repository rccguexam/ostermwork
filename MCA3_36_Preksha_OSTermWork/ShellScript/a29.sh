for i
do
	echo "Searching file : $i..."
	if grep -q "unix" "$i";then
		echo "Found in $i"
		exit
	fi
	echo "done"
done

#output
#preksha@DESKTOP-A0UDC7F:~$ sh a29.sh temp.txt
#Searching file : temp.txt...
#Found in temp.txt
