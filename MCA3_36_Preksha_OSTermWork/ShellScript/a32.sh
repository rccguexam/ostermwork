for i; do
	if [ -d $i ]; then
		echo "$i -> directory"
	elif [ -f $i ]; then
		printf "$i -> file with lines: "
		wc -l $i | awk {'print $1'}
	else
		echo "$i -> Invalid"
	fi
done

#output

#preksha@DESKTOP-A0UDC7F:~$ sh a32.sh demo.txt
#demo.txt -> file with lines: 3
