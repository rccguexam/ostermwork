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

#neel@NeelRana:/mnt/e/ROLWALA/sem-3/o.s/practiclis$ sh s_s_32.sh file.txt
#file.txt -> file with lines: 2
#neel@NeIiiana:/mnt/e/ROLWALA/sem-3/o.s/practicles$
