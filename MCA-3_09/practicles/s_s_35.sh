i=1
while [ $i -lt 500 ]
do
	j=$i
	total=0
	while [ $j -gt 0 ]
	do
		temp=$(echo $j%10 | bc)
		sum=$(echo $temp^3 | bc)
		total=$(echo $total+$sum | bc)
		j=$(echo $j/10 | bc)
	done
	if [ $total -eq $i ]
	then
		echo "Armstrong number : " $i
	fi
	i=`expr $i + 1`
done

#output

#neel@NeelRana:/mnt/e/ROLWALA/sem-3/o.s/practicles$ vi s_s_35.sh
#neel@NeelRana:/mnt/e/ROLWALA/sem-3/o.s/practicles$ sh s_s_35.sh
#Armstrong number :  1
#Armstrong number :  153
#Armstrong number :  370
#Armstrong number :  371
#Armstrong number :  407
