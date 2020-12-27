if [ $# -eq 0 ]; then
    echo "No Arguments"
        exit
fi

# If even no of args
if [ $(( $# % 2 )) == 0 ]; then
# Looping through each Argument
	count=1
	for i; do
		if !($count % 2); then
				cp $prevFile $i
				echo "'$prevFile' copied to -> $i"
		else
				prevFile=$i
		fi
			((count++))
	done

	# if odd no of args
else
	echo "Odd no of Arguments"
	exit
fi
