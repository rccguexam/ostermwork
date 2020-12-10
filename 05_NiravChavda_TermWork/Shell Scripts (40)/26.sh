#26. Write a script for renaming each file in the directory such that it will have the current  
#shell PID as an extension. The shell script should ensure that the directories do not
#get renamed.


for f in *
do
    [ -e $f ] || continue
        mv $f $f.$$
done


# Output :

# niravchavda@niravchavda:~/Desktop/Learning/shell/temp$ ls
# 26.sh  file1.txt  file2.txt

# niravchavda@niravchavda:~/Desktop/Learning/shell/temp$ sh 26.sh

# niravchavda@niravchavda:~/Desktop/Learning/shell/temp$ ls
# 26.sh.16528  file1.txt.16528  file2.txt.16528