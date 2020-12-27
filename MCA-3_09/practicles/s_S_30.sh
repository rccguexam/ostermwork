#zero arguments 

if [ $# -eq 0 ]
then 
	echo "No arguments"
	exit
fi

prevFile=$1

#if even no of args 

if [ $(echo $# % 2 | bc) -eq 0 ]
then
	#looping through each argument
	count=1
	for i 
	do
		if !(($count%2)) 
		then
			cp $prevFile $i
			echo "'$prevFile' copied to -> $i"
		else
			prevFile=$i
		fi
		count=$(echo $count+1 | bc)
	done
#if odd no of args
else
	echo "Odd no of arguments"
	exit
fi
