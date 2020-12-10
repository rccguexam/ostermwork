#28. Write a shell script which deletes all the lines containing the word "unix" in the files   
#supplied as arguments to it.

word="unix"

for i; do
    sed -i "/\b$word\b/Id" $i
done

# Output
# niravchavda@niravchavda:~/Desktop/Learning/shell$ cat wordfile.txt 
# this is line 1
# this is unix line
# this is line 3niravchavda@niravchavda:~/Desktop/Learning/shell$ sh 28.sh wordfile.txt 
# niravchavda@niravchavda:~/Desktop/Learning/shell$ cat wordfile.txt 
# this is line 1
# this is line 3
