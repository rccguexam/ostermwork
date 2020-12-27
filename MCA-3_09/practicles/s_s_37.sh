checkDivisible(){
	n=$1
	if [ $((n % 7)) -eq 0 ]; then
		return 1
	fi
	return 0
}

num=1

echo "The following no is devisible by 7 \n"

while [ $num -le 100 ]
do
	checkDivisible $num
	isDivisible=$?

	if [ $isDivisible -eq 1 ]
	then
		printf "$num "
	fi

	num=$((num+1))

done

echo "\n"

#output 

#neel@NeelRana:/mnt/e/ROLWALA/sem-3/o.s/practicles$ vi s_s_37.sh
#neel@NeelRana:/mnt/e/ROLWALA/sem-3/o.s/practicles$ sh s_s_37.sh
#The following no is devisible by 7

#7 14 21 28 35 42 49 56 63 70 77 84 91 98

#neel@NeelRana:/mnt/e/ROLWALA/sem-3/o.s/practicles$
