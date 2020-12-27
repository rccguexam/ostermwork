#27. A file called wordfile consists of several words. Write a shell script which will receive a 
#list of filenames, the first of which would be       wordfile. The shell script should report         
#all occurences of each word in wordfile in the rest of the files supplied as arguments.

filesToRead=$(($#-1))
echo $filesToRead

# Reading Line by Line
while read line; do
        # Reading Word by Word
        for word in $line; do
                echo "Searching word: '$word' ..."
                # 2 is slice starting index
                # filesToRead is slice length
                grep --color=always -n $word $2
                printf "Done.\n\n"
        done
done <"$1" # $1 is the file name we want to search


# Output :

# niravchavda@niravchavda:~/Desktop/Learning/shell$ sh 27.sh wordfile.txt wordfile2.txt 
# 1
# Searching word: 'This' ...
# 1:This is second word file
# Done.

# Searching word: 'is' ...
# 1:This is second word file
# Done.

# Searching word: 'a' ...
# 2:it also has several words in it
# Done.

# Searching word: 'word' ...
# 1:This is second word file
# 2:it also has several words in it
# 3:the second word file ends here
# Done.

# Searching word: 'file' ...
# 1:This is second word file
# 3:the second word file ends here
# Done.

# Searching word: 'it' ...
# 2:it also has several words in it
# Done.

# Searching word: 'has' ...
# 2:it also has several words in it
# Done.

# Searching word: 'several' ...
# 2:it also has several words in it
# Done.

# Searching word: 'words' ...
# 2:it also has several words in it
# Done.

# Searching word: 'in' ...
# 2:it also has several words in it
# Done.

# Searching word: 'it' ...
# 2:it also has several words in it
# Done.