#28. Write a shell script which deletes all the lines containing the word "unix" in the files   
#supplied as arguments to it.

for i; do
    sed -i "/\b$word\b/Id" $i
done


#lakshya@DESKTOP-8NGKNR6:~$ cat unix.txt
#unix
#hello
#i love unix
#linux is best

#lakshya@DESKTOP-8NGKNR6:~$ sh 28.sh unix.txt

#Output :

#lakshya@DESKTOP-8NGKNR6:~$ cat unix.txt
#hello
#linux is best
