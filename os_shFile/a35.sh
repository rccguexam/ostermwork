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

