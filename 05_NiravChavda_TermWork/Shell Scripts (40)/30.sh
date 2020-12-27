#30. A shell script receives even number of filenames. Suppose four filenames are supplied then  
#the first file should get copied into       second file, the third file should get copied into 
#fourth and so on.. If odd number of filenames are supplied display error message.


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

# niravchavda@niravchavda:~/Desktop/Learning/shell$ sh 30.sh wordfile.txt
# Odd no of Arguments

# niravchavda@niravchavda:~/Desktop/Learning/shell$ sh 30.sh wordfile.txt copy1.txt wordfile2.txt copy2.txt
# 30.sh: 18: 1: not found
# cp: 'wordfile.txt' and 'wordfile.txt' are the same file
# 'wordfile.txt' copied to -> wordfile.txt
# 30.sh: 18: 2: not found
# 'wordfile.txt' copied to -> copy1.txt
# 30.sh: 18: 3: not found
# 'wordfile.txt' copied to -> wordfile2.txt
# 30.sh: 18: 4: not found
# 'wordfile.txt' copied to -> copy2.txt

# niravchavda@niravchavda:~/Desktop/Learning/shell$ cat copy1.txt
# This is second word file
# it also has several words in it
# unix
# the second word file ends here

# niravchavda@niravchavda:~/Desktop/Learning/shell$ cat copy2.txt
# This is second word file
# it also has several words in it
# unix
# the second word file ends here