checkprime() {
	n=$1
	if [ $n -le 1 ] 
	then
		return 0 
	fi

	if [ $n -le 3 ]
	then 
		return 1
	fi

	if [ $(($n%2)) -eq 0 ]
	then
		return 0
	fi 

	if [ $(($n%3)) -eq 0 ] 
	then
		return 0 
	fi 
	i=5

	while [ $(($i*$i)) -eq 0 ]
	do 
		if [ $(($n%$i)) -eq 0 ] 
		then
			return 0 
		fi
		if [ $(($n%($i+2))) -eq 0 ]
		then
			return 0
		fi
		i=$((i+6))
	done
	return 1
}

num=2

while [ $num -le 300 ] 
do 
	checkprime $num
	isprime=$?

	if [ $isprime -eq 1 ] 
	then 
		echo "$num"
	fi

	num=$(($num+1))
done
		       	
