# 30. A shell script receives even number of filenames. Suppose four filenames are supplied then  
# the first file should get copied into       second file, the third file should get copied into 
# fourth and so on.. If odd number of filenames are supplied display error message.

#Zero arguments
if [ $# -eq 0 ]; then
        echo "No Arguments"
        exit
fi
prevFile=$1
# If even no of args
if [ $(echo $# % 2 | bc ) -eq 0 ]
then
        # Looping through each Argument
        count=1
        for i; do
                if !(($count % 2)); then
                        cp $prevFile $i
                        echo "'$prevFile' copied to -> $i"
                else
                        prevFile=$i
                fi
                count=$(echo $count+1 | bc )
        done
# if odd no of args
else
        echo "Odd no of Arguments"
        exit
fi

# Output :

# [ec2-user@ip-172-31-85-227 one]$ ./30.sh
# No Arguments


# [ec2-user@ip-172-31-85-227 one]$ ./30.sh 1.txt 2.txt
# '1.txt' copied to -> 2.txt
