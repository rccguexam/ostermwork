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

#neel@NeelRana:/mnt/e/ROLWALA/sem-3/o.s/practicles$ vi s__29.sh
#neel@NeelRana:/mnt/e/ROLWALA/sem-3/o.s/practicles$ sh s__29.sh file.txt
#Searching file : file.txt...
#Found in file.txt
#neel@NeelRana:/mnt/e/ROLWALA/sem-3/o.s/practicles$  

